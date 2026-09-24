<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\AdministrasiPerjalananDinas;
use App\Models\MasterJenisPerjalananDinas;
use App\Models\MasterPetugasProtokol;
use App\Models\MasterPegawai;
use App\Models\ModuleRead;

class AdmPerjalananDinasController extends Controller
{
    /**
     * Tampilkan daftar kegiatan administrasi perjalanan dinas.
     *
     * @param Request $request
     * @return \Illuminate\Contracts\View\View|\Illuminate\Http\Response|\Symfony\Component\HttpFoundation\BinaryFileResponse
     */
    public function index(Request $request)
    {
        // Update last read for superadmin notification badge
        if (Auth::check() && Auth::user()->role === 'super_admin') {
            ModuleRead::updateOrCreate(
                ['id_user' => Auth::id(), 'module_name' => 'administrasi-perjalanan-dinas'],
                ['last_read_at' => now()]
            );
        }

        $query = AdministrasiPerjalananDinas::query();
        $query->with(['jenisPerjalananDinas', 'creator', 'updater']);

        $this->applyFilter($query, $request);

        // Summary Cards Data
        $totalKegiatan = $query->count();

        // Calculate breakdown for Total Kegiatan card (by pelaksana)
        $totalRecords = (clone $query)->get(['pelaksana']);
        $totalPelaksanaCounts = [];
        foreach ($totalRecords as $record) {
            $name = $record->pelaksana;
            if ($name) {
                $names = array_map('trim', explode(',', $name));
                foreach ($names as $n) {
                    if ($n) {
                        $totalPelaksanaCounts[$n] = ($totalPelaksanaCounts[$n] ?? 0) + 1;
                    }
                }
            }
        }
        arsort($totalPelaksanaCounts);
        $totalBreakdown = collect(array_slice($totalPelaksanaCounts, 0, 5, true))->map(function ($count, $name) {
            return [
                'label' => $name,
                'value' => $count
            ];
        })->values();

        // Count per Jenis Perjalanan
        $jenisPerjalananSummary = MasterJenisPerjalananDinas::withCount([
            'admPerjalananDinas as total' => function ($q) use ($request) {
                $this->applyFilter($q, $request);
            }
        ])->get()->map(function ($jenis) use ($request) {
            $records = AdministrasiPerjalananDinas::where('id_jenis_perjalanan_dinas', $jenis->id_jenis_perjalanan);
            $this->applyFilter($records, $request);
            $records = $records->get(['pelaksana']);

            $pelaksanaCounts = [];
            foreach ($records as $record) {
                $name = $record->pelaksana;
                if ($name) {
                    $names = array_map('trim', explode(',', $name));
                    foreach ($names as $n) {
                        if ($n) {
                            $pelaksanaCounts[$n] = ($pelaksanaCounts[$n] ?? 0) + 1;
                        }
                    }
                }
            }
            arsort($pelaksanaCounts);
            $topPelaksana = collect(array_slice($pelaksanaCounts, 0, 5, true))->map(function ($count, $name) {
                return [
                    'label' => $name,
                    'value' => $count
                ];
            })->values();

            $jenis->breakdown = $topPelaksana;

            $colors = [
                ['bg' => 'bg-gradient-to-br from-green-50 to-green-100', 'border' => 'border-green-100', 'icon_bg' => 'from-green-500 to-green-600', 'shadow' => 'shadow-green-500/30', 'text' => 'text-green-600', 'chip_bg' => 'bg-green-100'],
                ['bg' => 'bg-gradient-to-br from-amber-50 to-amber-100', 'border' => 'border-amber-100', 'icon_bg' => 'from-amber-500 to-amber-600', 'shadow' => 'shadow-amber-500/30', 'text' => 'text-amber-600', 'chip_bg' => 'bg-amber-100'],
                ['bg' => 'bg-gradient-to-br from-rose-50 to-rose-100', 'border' => 'border-rose-100', 'icon_bg' => 'from-rose-500 to-rose-600', 'shadow' => 'shadow-rose-500/30', 'text' => 'text-rose-600', 'chip_bg' => 'bg-rose-100'],
                ['bg' => 'bg-gradient-to-br from-teal-50 to-teal-100', 'border' => 'border-teal-100', 'icon_bg' => 'from-teal-500 to-teal-600', 'shadow' => 'shadow-teal-500/30', 'text' => 'text-teal-600', 'chip_bg' => 'bg-teal-100'],
            ];

            $colorIndex = ($jenis->id_jenis_perjalanan - 1) % count($colors);
            $jenis->style = $colors[$colorIndex];
            $jenis->label = str_replace('Administrasi Perjalanan Dinas ', '', $jenis->nama_jenis);

            return $jenis;
        });

        $totalProtokol = MasterPetugasProtokol::count();

        // Sorting
        $query->orderBy('tanggal_mulai', 'desc')->orderBy('waktu', 'desc');

        // Export Logic
        if ($request->has('export')) {
            $exportResponse = $this->exportData($query, $request);
            if ($exportResponse) {
                return $exportResponse;
            }
        }

        $kegiatan = $query->paginate(10)->onEachSide(1)->withQueryString();

        return view('administrasi-perjalanan-dinas.index', compact(
            'kegiatan',
            'totalKegiatan',
            'totalBreakdown',
            'jenisPerjalananSummary',
            'totalProtokol'
        ));
    }

    /**
     * Apply filter conditions to the query.
     */
    private function applyFilter($query, Request $request)
    {
        if ($request->filled('start_date') && $request->filled('end_date')) {
            $query->whereBetween('tanggal_mulai', [$request->start_date, $request->end_date]);
        } elseif ($request->filled('month')) {
            try {
                $date = Carbon::parse($request->month);
                $query->whereYear('tanggal_mulai', $date->year)
                    ->whereMonth('tanggal_mulai', $date->month);
            } catch (\Exception $e) {
                // Ignore invalid date
            }
        } elseif ($request->filled('year')) {
            $query->whereYear('tanggal_mulai', $request->year);
        }

        if ($request->filled('search')) {
            $search = $request->search;
            $query->where(function ($sub) use ($search) {
                $sub->where('nama_kegiatan', 'like', "%{$search}%")
                    ->orWhere('tujuan', 'like', "%{$search}%")
                    ->orWhere('pelaksana', 'like', "%{$search}%")
                    ->orWhereHas('jenisPerjalananDinas', function ($q) use ($search) {
                        $q->where('nama_jenis', 'like', "%{$search}%");
                    });

                $matchingPetugasIds = MasterPetugasProtokol::where('nama', 'like', "%{$search}%")
                    ->pluck('id_petugas')->toArray();
                foreach ($matchingPetugasIds as $id) {
                    $sub->orWhereJsonContains('id_petugas', (string)$id)
                        ->orWhereJsonContains('id_petugas', (int)$id);
                }
            });
        }
    }

    /**
     * Handle export to Excel or PDF.
     */
    private function exportData($query, Request $request)
    {
        $kegiatan = $query->get();
        $columns = $request->input('columns', []);

        if (empty($columns)) {
            $columns = ['tanggal', 'waktu', 'nama_kegiatan', 'jenis_perjalanan', 'pelaksana', 'tujuan'];
        }

        if ($request->export == 'excel') {
            $fileName = 'laporan-perjalanan-dinas-' . now()->format('Y-m-d') . '.xls';

            return response(view('administrasi-perjalanan-dinas.excel', compact('kegiatan', 'columns')))
                ->header('Content-Type', 'application/vnd.ms-excel')
                ->header('Content-Disposition', 'attachment; filename="' . $fileName . '"');
        }

        if ($request->export == 'pdf') {
            @ini_set('memory_limit', '512M');

            $subTitleParts = [];
            if ($request->filled('start_date') && $request->filled('end_date')) {
                $subTitleParts[] = "Periode: " . Carbon::parse($request->start_date)->isoFormat('D MMMM Y') . " - " . Carbon::parse($request->end_date)->isoFormat('D MMMM Y');
            } elseif ($request->filled('date')) {
                $subTitleParts[] = "Tanggal: " . Carbon::parse($request->date)->isoFormat('D MMMM Y');
            } elseif ($request->filled('month')) {
                $subTitleParts[] = "Bulan: " . Carbon::parse($request->month)->isoFormat('MMMM Y');
            } elseif ($request->filled('year')) {
                $subTitleParts[] = "Tahun: " . $request->year;
            }

            if ($request->filled('search')) {
                $subTitleParts[] = "Kategori/Cari: " . $request->search;
            }

            $subTitle = empty($subTitleParts) ? 'Semua Data' : implode(' | ', $subTitleParts);

            $pdf = Pdf::loadView('administrasi-perjalanan-dinas.pdf', compact('kegiatan', 'columns', 'subTitle'));
            $pdf->setPaper('a4', 'landscape');
            return $pdf->download('laporan-perjalanan-dinas.pdf');
        }

        return null;
    }

    /**
     * Tampilkan form tambah kegiatan baru.
     */
    public function create()
    {
        // Dropdown data
        $jenisPerjalanan = DB::table('master_jenis_perjalanan_dinas')->get();
        // Determine ID for Luar Negeri
        $luarNegeriId = $jenisPerjalanan->filter(fn($j) => str_contains(strtolower($j->nama_jenis), 'luar negeri'))->pluck('id_jenis_perjalanan')->first();

        // Fetch Provinces for 'Dalam Negeri' option (if any)
        // If master_provinsi is not a model, use DB
        $provinsi = DB::table('master_provinsi')->orderBy('nama_provinsi')->get();

        $petugasProtokol = MasterPetugasProtokol::where('is_active', 1)->orderBy('nama')->get();
        $masterPegawai = MasterPegawai::where('is_active', 1)->orderBy('nama_lengkap')->get();

        return view('administrasi-perjalanan-dinas.create', compact('jenisPerjalanan', 'petugasProtokol', 'provinsi', 'luarNegeriId', 'masterPegawai'));
    }


    /**
     * Simpan kegiatan baru ke database.
     */
    public function store(Request $request)
    {
        // MERGE Tujuan logic
        $tujuan = $request->filled('tujuan_manual') ? $request->tujuan_manual : $request->tujuan_provinsi;
        $request->merge(['tujuan' => $tujuan]);

        $request->validate([
            'nama_kegiatan' => 'required|string|max:255',
            'tanggal' => 'required|string', // Range format date
            'id_jenis_perjalanan_dinas' => 'required|exists:master_jenis_perjalanan_dinas,id_jenis_perjalanan',
            'pelaksana' => 'required|array|max:100',
            'pelaksana.*' => 'string|max:255',
            'tujuan' => 'required|string',
            'petugas_id' => 'nullable|array',
            'petugas_id.*' => 'exists:master_petugas_protokol,id_petugas',
            'file' => 'nullable|file|mimes:pdf,doc,docx,jpeg,jpg,png,xls,xlsx|max:10240',
        ]);


        // Parse Date Range "YYYY-MM-DD to YYYY-MM-DD"
        $dates = preg_split('/(\s+to\s+|\s+-\s+)/', $request->tanggal);
        $tanggalMulai = trim($dates[0]);
        $tanggalSelesai = isset($dates[1]) ? trim($dates[1]) : $tanggalMulai;

        $filePath = null;
        if ($request->hasFile('file')) {
            $filePath = $request->file('file')->store('administrasi_perjalanan_dinas', 'public');
        }

        $adm = AdministrasiPerjalananDinas::create([
            'nama_kegiatan' => $request->nama_kegiatan,
            'tanggal_mulai' => $tanggalMulai,
            'tanggal_selesai' => $tanggalSelesai,
            'id_jenis_perjalanan_dinas' => $request->id_jenis_perjalanan_dinas,
            'id_petugas' => $request->petugas_id ?? [],
            'tujuan' => $request->tujuan,
            'pelaksana' => implode('; ', $request->pelaksana),
            'waktu' => '09:00', // Default time

            'file_path' => $filePath,
            'created_by' => Auth::id(),
            'updated_by' => Auth::id(),
        ]);

        return redirect()->route('administrasi-perjalanan-dinas')
            ->with('success', 'Kegiatan perjalanan dinas berhasil ditambahkan.');
    }
    /**
     * Tampilkan detail kegiatan perjalanan dinas.
     */
    public function show($id)
    {
        $item = AdministrasiPerjalananDinas::with(['jenisPerjalananDinas', 'creator', 'updater', 'historyLogs', 'historyLogs.user'])->findOrFail($id);

        if (Auth::user()->role === 'super_admin' && !$item->is_seen_by_superadmin) {
            $item->is_seen_by_superadmin = true;
            $item->save();
        }

        return view('administrasi-perjalanan-dinas.show', compact('item'));
    }

    /**
     * Tampilkan form untuk mengedit kegiatan.
     */
    public function edit($id)
    {
        $item = AdministrasiPerjalananDinas::findOrFail($id);

        // Eager load related data for dropdowns
        $jenisPerjalanan = DB::table('master_jenis_perjalanan_dinas')->get();
        $luarNegeriId = $jenisPerjalanan->filter(fn($j) => str_contains(strtolower($j->nama_jenis), 'luar negeri'))->pluck('id_jenis_perjalanan')->first();
        $provinsi = DB::table('master_provinsi')->orderBy('nama_provinsi')->get();
        $petugasProtokol = MasterPetugasProtokol::where('is_active', 1)->orderBy('nama')->get();
        $masterPegawai = MasterPegawai::where('is_active', 1)->orderBy('nama_lengkap')->get();

        return view('administrasi-perjalanan-dinas.edit', compact('item', 'jenisPerjalanan', 'petugasProtokol', 'provinsi', 'luarNegeriId', 'masterPegawai'));
    }


    /**
     * Perbarui data kegiatan di database.
     */
    public function update(Request $request, $id)
    {
        $item = AdministrasiPerjalananDinas::findOrFail($id);

        // MERGE Tujuan logic
        $tujuan = $request->filled('tujuan_manual') ? $request->tujuan_manual : $request->tujuan_provinsi;
        $request->merge(['tujuan' => $tujuan]);

        $request->validate([
            'nama_kegiatan' => 'required|string|max:255',
            'tanggal' => 'required|string', // Range format date
            'id_jenis_perjalanan_dinas' => 'required|exists:master_jenis_perjalanan_dinas,id_jenis_perjalanan',
            'pelaksana' => 'required|array|max:100',
            'pelaksana.*' => 'string|max:255',
            'tujuan' => 'required|string',
            'petugas_id' => 'nullable|array',
            'petugas_id.*' => 'exists:master_petugas_protokol,id_petugas',
            'file' => 'nullable|file|mimes:pdf,doc,docx,jpeg,jpg,png,xls,xlsx|max:10240',
        ]);


        // Parse Date Range
        $dates = preg_split('/(\s+to\s+|\s+-\s+)/', $request->tanggal);
        $tanggalMulai = trim($dates[0]);
        $tanggalSelesai = isset($dates[1]) ? trim($dates[1]) : $tanggalMulai;

        $data = [
            'nama_kegiatan' => $request->nama_kegiatan,
            'tanggal_mulai' => $tanggalMulai,
            'tanggal_selesai' => $tanggalSelesai,
            'id_jenis_perjalanan_dinas' => $request->id_jenis_perjalanan_dinas,
            'tujuan' => $request->tujuan,
            'pelaksana' => implode('; ', $request->pelaksana),
            'updated_by' => Auth::id(),
        ];

        if (Auth::user()->role === 'admin') {
            $data['is_seen_by_superadmin'] = false;
        }

        // Only update petugas if user is super admin (since field is hidden for others)
        if (auth()->user()->isSuperAdmin()) {
            $data['id_petugas'] = $request->petugas_id ?? [];
        }

        if ($request->hasFile('file')) {
            // Delete old file if exists
            if ($item->file_path) {
                Storage::disk('public')->delete($item->file_path);
            }
            $data['file_path'] = $request->file('file')->store('administrasi_perjalanan_dinas', 'public');
        }

        $item->update($data);

        return redirect()->route('administrasi-perjalanan-dinas')
            ->with('success', 'Kegiatan perjalanan dinas berhasil diperbarui.');
    }

    /**
     * Hapus data kegiatan dari database.
     */
    public function destroy($id)
    {
        $item = AdministrasiPerjalananDinas::findOrFail($id);

        // Delete file if exists
        if ($item->file_path) {
            Storage::disk('public')->delete($item->file_path);
        }

        $item->delete();

        return redirect()->route('administrasi-perjalanan-dinas')
            ->with('success', 'Kegiatan perjalanan dinas berhasil dihapus.');
    }
}
