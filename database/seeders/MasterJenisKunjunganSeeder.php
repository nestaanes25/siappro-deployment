<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MasterJenisKunjunganSeeder extends Seeder
{
    /**
     * Seed master_jenis_kunjungan dengan kategori paten.
     */
    public function run(): void
    {
        $jenisList = [
            'Administrasi Kunjungan Kerja Dalam Negeri',
            'Administrasi Kunjungan Kerja Luar Negeri',
            'Pendampingan Kunjungan Kerja Dalam Negeri',
            'Pendampingan Kunjungan Kerja Luar Negeri',
        ];

        foreach ($jenisList as $index => $namaJenis) {
            DB::table('master_jenis_kunjungan')->updateOrInsert(
                ['id_jenis_kunjungan' => $index + 1],
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
