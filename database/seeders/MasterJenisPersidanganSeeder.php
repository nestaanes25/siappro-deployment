<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MasterJenisPersidanganSeeder extends Seeder
{
    /**
     * Seed master_jenis_persidangan dengan kategori paten.
     */
    public function run(): void
    {
        $jenisList = [
            'Audiensi',
            'Diskusi Terbatas',
            'Pertemuan Terbatas',
            'Rapat Tim Kajian',
            'Sidang Pleno',
            'Rapat Internal',
        ];

        foreach ($jenisList as $index => $namaJenis) {
            DB::table('master_jenis_persidangan')->updateOrInsert(
                ['id_jenis_persidangan' => $index + 1],
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
