<?php

namespace App\Http\Controllers;

use App\Models\PelayananKeprotokolan;
use App\Models\MasterAnggotaDewan;
use App\Models\MasterJenisPelayanan;
use App\Models\MasterPetugasProtokol;
use App\Models\ModuleRead;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Barryvdh\DomPDF\Facade\Pdf;

class PelayananKeprotokolanController extends Controller
{
    /**
     * Tampilkan daftar kegiatan pelayanan keprotokolan.
     *
     * @param Request $request
     * @return \Illuminate\Contracts\View\View|\Illuminate\Http\Response|\Symfony\Component\HttpFoundation\BinaryFileResponse
     */
    public function index(Request $request)
    {
        // Update last read for superadmin notification badge
        if (Auth::check() && Auth::user()->role === 'super_admin') {
            ModuleRead::updateOrCreate(
                ['id_user' => Auth::id(), 'module_name' => 'pelayanan-keprotokolan'],
                ['last_read_at' => now()]
            );
        }

        // 1. Initial Query
        $query = PelayananKeprotokolan::with(['jenisPelayanan']);

        // 2. Apply Filter Logic
        $this->applyFilter($query, $request);

        // 3. Summary Cards Data (Filtered)
        $totalKegiatan = $query->count();
        $totalBreakdown = $this->getTotalBreakdown($query);
        $jenisPelayananSummary = $this->getJenisSummary($request);
        $totalProtokol = MasterPetugasProtokol::count();

        // 4. Sorting
        $query->orderBy('tanggal_kegiatan', 'desc')->orderBy('waktu', 'desc');

        // 5. Export Logic
        if ($request->has('export')) {
            $exportResponse = $this->exportData($query, $request);
            if ($exportResponse) {
                return $exportResponse;
            }
        }

        // 6. Pagination
        $kegiatan = $query->paginate(10)->onEachSide(1)->withQueryString();
        $masterAnggota = MasterAnggotaDewan::where('is_active', 1)->orderBy('nama')->get();

        return view('pelayanan-keprotokolan.index', compact(
            'kegiatan',
            'totalKegiatan',
            'totalBreakdown',
            'totalProtokol',
            'jenisPelayananSummary',
            'masterAnggota'
        ));
    }

    /**
     * Calculate breakdown for Total Kegiatan card.
     */
    private function getTotalBreakdown($query)
    {
        $totalRecords = (clone $query)->get(['id_anggota']);
        $totalAnggotaCounts = [];
        foreach ($totalRecords as $record) {
            $ids = $record->id_anggota;
            if (!is_array($ids)) {
                $ids = json_decode($ids, true);
            }
            foreach ((array)$ids as $id) {
                if ($id) {
                    $totalAnggotaCounts[$id] = ($totalAnggotaCounts[$id] ?? 0) + 1;
                }
            }
        }
        arsort($totalAnggotaCounts);
        $totalTopIds = array_slice(array_keys($totalAnggotaCounts), 0, 5);

        return MasterAnggotaDewan::whereIn('id_anggota', $totalTopIds)->get()->map(function ($a) use ($totalAnggotaCounts) {
            return [
                'label' => explode(',', $a->nama)[0],
                'value' => $totalAnggotaCounts[$a->id_anggota]
            ];
        })->sortByDesc('value')->values();
    }

    /**
     * Get summary cards breakdown per jenis pelayanan.
     */
    private function getJenisSummary(Request $request)
    {
        return MasterJenisPelayanan::withCount([
            'pelayananKeprotokolan as total' => function ($q) use ($request) {
                $this->applyFilter($q, $request);
            }
        ])->get()->map(function ($jenis) use ($request) {
            $records = PelayananKeprotokolan::where('id_jenis_pelayanan', $jenis->id_jenis_pelayanan);
            $this->applyFilter($records, $request);
            $records = $records->get(['id_anggota']);

            $anggotaCounts = [];
            foreach ($records as $record) {
                $ids = $record->id_anggota;
                if (!is_array($ids)) {
                    $ids = json_decode($ids, true);
                }
                foreach ((array)$ids as $id) {
                    if ($id) {
                        $anggotaCounts[$id] = ($anggotaCounts[$id] ?? 0) + 1;
                    }
                }
            }
            arsort($anggotaCounts);
            $topIds = array_slice(array_keys($anggotaCounts), 0, 5);
            $topAnggota = MasterAnggotaDewan::whereIn('id_anggota', $topIds)->get()->map(function ($a) use ($anggotaCounts) {
                return [
                    'label' => explode(',', $a->nama)[0],
                    'value' => $anggotaCounts[$a->id_anggota]
                ];
            })->sortByDesc('value')->values();

            $jenis->breakdown = $topAnggota;

            $colors = [
                ['bg' => 'bg-gradient-to-br from-blue-50 to-blue-100', 'border' => 'border-blue-100', 'icon_bg' => 'from-blue-500 to-blue-600', 'shadow' => 'shadow-blue-500/30', 'text' => 'text-blue-600', 'chip_bg' => 'bg-blue-100'],
                ['bg' => 'bg-gradient-to-br from-red-50 to-red-100', 'border' => 'border-red-100', 'icon_bg' => 'from-red-500 to-red-600', 'shadow' => 'shadow-red-500/30', 'text' => 'text-red-600', 'chip_bg' => 'bg-red-100'],
                ['bg' => 'bg-gradient-to-br from-green-50 to-green-100', 'border' => 'border-green-100', 'icon_bg' => 'from-green-500 to-green-600', 'shadow' => 'shadow-green-500/30', 'text' => 'text-green-600', 'chip_bg' => 'bg-green-100'],
                ['bg' => 'bg-gradient-to-br from-purple-50 to-purple-100', 'border' => 'border-purple-100', 'icon_bg' => 'from-purple-500 to-purple-600', 'shadow' => 'shadow-purple-500/30', 'text' => 'text-purple-600', 'chip_bg' => 'bg-purple-100'],
                ['bg' => 'bg-gradient-to-br from-amber-50 to-amber-100', 'border' => 'border-amber-100', 'icon_bg' => 'from-amber-500 to-amber-600', 'shadow' => 'shadow-amber-500/30', 'text' => 'text-amber-600', 'chip_bg' => 'bg-amber-100'],
                ['bg' => 'bg-gradient-to-br from-indigo-50 to-indigo-100', 'border' => 'border-indigo-100', 'icon_bg' => 'from-indigo-500 to-indigo-600', 'shadow' => 'shadow-indigo-500/30', 'text' => 'text-indigo-600', 'chip_bg' => 'bg-indigo-100'],
                ['bg' => 'bg-gradient-to-br from-teal-50 to-teal-100', 'border' => 'border-teal-100', 'icon_bg' => 'from-teal-500 to-teal-600', 'shadow' => 'shadow-teal-500/30', 'text' => 'text-teal-600', 'chip_bg' => 'bg-teal-100'],
                ['bg' => 'bg-gradient-to-br from-pink-50 to-pink-100', 'border' => 'border-pink-100', 'icon_bg' => 'from-pink-500 to-pink-600', 'shadow' => 'shadow-pink-500/30', 'text' => 'text-pink-600', 'chip_bg' => 'bg-pink-100'],
            ];

            $colorIndex = ($jenis->id_jenis_pelayanan - 1) % count($colors);
            $jenis->style = $colors[$colorIndex];

            $jenis->label = match ($jenis->nama_jenis) {
                'Pelayanan Keprotokolan Bandara' => 'Bandara',
                'Pelayanan Keprotokolan Acara Dalam Kota' => 'Lokal',
                'Audiensi Kepada RI 1', 'Audiensi kepada RI 1' => 'Aud. RI 1',
                'Audiensi Kepada RI 2', 'Audiensi kepada RI 2' => 'Aud. RI 2',
                'Sidang Kabinet' => 'Sidang',
                default => 'Umum',
            };

            return $jenis;
        });
    }

    /**
     * Apply filter logic to the query.
     */
    private function applyFilter($query, Request $request)
    {
        if ($request->filled('start_date') && $request->filled('end_date')) {
            $query->whereBetween('tanggal_kegiatan', [$request->start_date, $request->end_date]);
        } elseif ($request->filled('month')) {
            try {
                $date = Carbon::parse($request->month);
                $query->whereYear('tanggal_kegiatan', $date->year)
                    ->whereMonth('tanggal_kegiatan', $date->month);
            } catch (\Exception $e) {
                // Fallback or ignore invalid date
            }
        } elseif ($request->filled('year')) {
            $query->whereYear('tanggal_kegiatan', $request->year);
        }

        if ($request->filled('id_anggota')) {
            $query->where(function ($sub) use ($request) {
                $sub->whereJsonContains('id_anggota', (string)$request->id_anggota)
                    ->orWhereJsonContains('id_anggota', (int)$request->id_anggota);
            });
        }

        if ($request->filled('search')) {
            $search = $request->search;
            $query->where(function ($sub) use ($search) {
                $sub->where('nama_kegiatan', 'like', "%{$search}%")
                    ->orWhere('tempat', 'like', "%{$search}%")
                    ->orWhereHas('jenisPelayanan', function ($q) use ($search) {
                        $q->where('nama_jenis', 'like', "%{$search}%");
                    });

                $matchingAnggotaIds = MasterAnggotaDewan::where('nama', 'like', "%{$search}%")
                    ->pluck('id_anggota')->toArray();
                foreach ($matchingAnggotaIds as $id) {
                    $sub->orWhereJsonContains('id_anggota', (string)$id)
                        ->orWhereJsonContains('id_anggota', (int)$id);
                }

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
     * Handle export data logic.
     */
    private function exportData($query, Request $request)
    {
        $kegiatan = $query->get();
        $columns = $request->input('columns', []);

        if (empty($columns)) {
            $columns = ['tanggal', 'waktu', 'nama_kegiatan', 'jenis_pelayanan', 'anggota_dewan', 'tempat'];
        }

        if ($request->export == 'excel') {
            $fileName = 'laporan-keprotokolan-' . now()->format('Y-m-d') . '.xls';
            return response(view('pelayanan-keprotokolan.excel', compact('kegiatan', 'columns')))
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

            if ($request->filled('id_anggota')) {
                $anggota = MasterAnggotaDewan::find($request->id_anggota);
                if ($anggota) $subTitleParts[] = "Anggota: " . $anggota->nama;
            }

            $subTitle = empty($subTitleParts) ? 'Semua Data' : implode(' | ', $subTitleParts);

            $pdf = Pdf::loadView('pelayanan-keprotokolan.pdf', compact('kegiatan', 'columns', 'subTitle'));
            $pdf->setPaper('a4', 'landscape');
            return $pdf->download('laporan-keprotokolan.pdf');
        }

        return null;
    }


    /**
     * Tampilkan form tambah kegiatan baru.
     */
    public function create()
    {
        $anggotaDewan = MasterAnggotaDewan::where('is_active', 1)->orderBy('nama')->get();
        $jenisPelayanan = MasterJenisPelayanan::where('is_active', 1)->orderBy('nama_jenis')->get();
        $petugasProtokol = MasterPetugasProtokol::where('is_active', 1)->orderBy('nama')->get();

        return view('pelayanan-keprotokolan.create', compact(
            'anggotaDewan',
            'jenisPelayanan',
            'petugasProtokol'
        ));
    }

    /**
     * Simpan kegiatan baru ke database.
     */
    public function store(Request $request)
    {
        $rules = [
            'anggota_dewan_id' => 'required|array',
            'anggota_dewan_id.*' => 'exists:master_anggota_dewan,id_anggota',
            'tanggal_kegiatan' => 'required|date',
            'waktu' => 'required',
            'id_jenis_pelayanan' => 'required|integer|exists:master_jenis_pelayanan,id_jenis_pelayanan',
            'tempat' => 'nullable|string|max:255',
            'nama_kegiatan' => 'required|string|max:255',
            'petugas_id' => 'nullable|array',
            'petugas_id.*' => 'exists:master_petugas_protokol,id_petugas',
            'file' => 'nullable|file|mimes:pdf,doc,docx,jpeg,jpg,png,xls,xlsx|max:10240',
        ];

        $validated = $request->validate($rules);

        // Upload file
        $filePath = null;
        if ($request->hasFile('file')) {
            $filePath = $request->file('file')->store('pelayanan-keprotokolan', 'public');
        }

        // Insert data pelayanan keprotokolan
        $pelayanan = PelayananKeprotokolan::create([
            'id_anggota' => $validated['anggota_dewan_id'], // Simpan sebagai array JSON
            'id_jenis_pelayanan' => $validated['id_jenis_pelayanan'],
            'nama_kegiatan' => $validated['nama_kegiatan'],
            'tanggal_kegiatan' => $validated['tanggal_kegiatan'],
            'waktu' => $validated['waktu'],
            'tempat' => $validated['tempat'] ?? null,
            'id_petugas' => $validated['petugas_id'] ?? [], // Simpan sebagai array JSON
            'file_path' => $filePath,
            'created_by' => Auth::user()->id_user ?? Auth::id(),
            'updated_by' => Auth::user()->id_user ?? Auth::id(),
        ]);

        return redirect()->route('pelayanan-keprotokolan')
            ->with('success', 'Kegiatan pelayanan keprotokolan berhasil ditambahkan.');
    }

    /**
     * Tampilkan detail kegiatan.
     */
    public function show($id)
    {
        $item = PelayananKeprotokolan::with(['jenisPelayanan', 'creator', 'updater'])
            ->findOrFail($id);

        if (Auth::user()->role === 'super_admin' && !$item->is_seen_by_superadmin) {
            $item->is_seen_by_superadmin = true;
            $item->save();
        }

        return view('pelayanan-keprotokolan.show', compact('item'));
    }

    /**
     * Tampilkan form edit kegiatan.
     */
    public function edit($id)
    {
        $item = PelayananKeprotokolan::findOrFail($id);
        $anggotaDewan = MasterAnggotaDewan::where('is_active', 1)->orderBy('nama')->get();
        $jenisPelayanan = MasterJenisPelayanan::where('is_active', 1)->orderBy('nama_jenis')->get();
        $petugasProtokol = MasterPetugasProtokol::where('is_active', 1)->orderBy('nama')->get();

        return view('pelayanan-keprotokolan.edit', compact('item', 'anggotaDewan', 'jenisPelayanan', 'petugasProtokol'));
    }

    /**
     * Update data kegiatan di database.
     */
    public function update(Request $request, $id)
    {
        $pelayanan = PelayananKeprotokolan::findOrFail($id);

        $rules = [
            'anggota_dewan_id' => 'required|array',
            'anggota_dewan_id.*' => 'exists:master_anggota_dewan,id_anggota',
            'tanggal_kegiatan' => 'required|date',
            'waktu' => 'required',
            'id_jenis_pelayanan' => 'required|integer|exists:master_jenis_pelayanan,id_jenis_pelayanan',
            'tempat' => 'nullable|string|max:255',
            'nama_kegiatan' => 'required|string|max:255',
            'petugas_id' => 'nullable|array',
            'petugas_id.*' => 'exists:master_petugas_protokol,id_petugas',
            'file' => 'nullable|file|mimes:pdf,doc,docx,jpeg,jpg,png,xls,xlsx|max:10240',
        ];

        $validated = $request->validate($rules);

        if ($request->hasFile('file')) {
            // Delete old file if exists
            if ($pelayanan->file_path) {
                Storage::disk('public')->delete($pelayanan->file_path);
            }
            $pelayanan->file_path = $request->file('file')->store('pelayanan-keprotokolan', 'public');
        }

        $updateData = [
            'id_anggota' => $validated['anggota_dewan_id'], // Update sebagai array JSON
            'id_jenis_pelayanan' => $validated['id_jenis_pelayanan'],
            'nama_kegiatan' => $validated['nama_kegiatan'],
            'tanggal_kegiatan' => $validated['tanggal_kegiatan'],
            'waktu' => $validated['waktu'],
            'tempat' => $validated['tempat'] ?? null,
            'updated_by' => Auth::id(),
        ];

        if (Auth::user()->role === 'admin') {
            $updateData['is_seen_by_superadmin'] = false;
        }

        // Only update petugas if user is super admin (since field is hidden for others)
        if (auth()->user()->isSuperAdmin()) {
            $updateData['id_petugas'] = $validated['petugas_id'] ?? [];
        }

        $pelayanan->update($updateData);

        return redirect()->route('pelayanan-keprotokolan')
            ->with('success', 'Kegiatan berhasil diperbarui.');
    }

    /**
     * Hapus data kegiatan.
     */
    public function destroy($id)
    {
        $pelayanan = PelayananKeprotokolan::findOrFail($id);

        // Delete file if exists
        if ($pelayanan->file_path) {
            Storage::disk('public')->delete($pelayanan->file_path);
        }

        $pelayanan->delete();

        return redirect()->route('pelayanan-keprotokolan')
            ->with('success', 'Kegiatan pelayanan keprotokolan berhasil dihapus.');
    }
}
