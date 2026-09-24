<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MasterJenisPelayananSeeder extends Seeder
{
    /**
     * Seed master_jenis_pelayanan dengan kategori paten.
     */
    public function run(): void
    {
        $jenisList = [
            'Pelayanan Keprotokolan Bandara',
            'Pelayanan Keprotokolan Acara Dalam Kota',
            'Audiensi Kepada RI 1',
            'Audiensi Kepada RI 2',
            'Sidang Kabinet',
        ];

        foreach ($jenisList as $index => $namaJenis) {
            DB::table('master_jenis_pelayanan')->updateOrInsert(
                ['id_jenis_pelayanan' => $index + 1],
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
