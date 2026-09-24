<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MasterJenisPerjalananDinasSeeder extends Seeder
{
    /**
     * Seed master_jenis_perjalanan_dinas dengan kategori paten.
     */
    public function run(): void
    {
        $jenisList = [
            'Administrasi Perjalanan Dinas Dalam Negeri',
            'Administrasi Perjalanan Dinas Luar Negeri',
        ];

        foreach ($jenisList as $index => $namaJenis) {
            DB::table('master_jenis_perjalanan_dinas')->updateOrInsert(
                ['id_jenis_perjalanan' => $index + 1],
                [
                    'nama_jenis' => $namaJenis,
                    'is_active' => 1,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]
            );
        }
    }
}
