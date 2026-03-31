<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        $tables = [
            'pelayanan_keprotokolan',
            'persidangan',
            'kunjungan_kerja',
            'administrasi_perjalanan_dinas'
        ];

        foreach ($tables as $tableName) {
            Schema::table($tableName, function (Blueprint $table) {
                if (!Schema::hasColumn($table->getTable(), 'is_seen_by_superadmin')) {
                    $table->boolean('is_seen_by_superadmin')->default(false)->after('updated_by');
                }
            });
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        $tables = [
            'pelayanan_keprotokolan',
            'persidangan',
            'kunjungan_kerja',
            'administrasi_perjalanan_dinas'
        ];

        foreach ($tables as $tableName) {
            Schema::table($tableName, function (Blueprint $table) {
                if (Schema::hasColumn($table->getTable(), 'is_seen_by_superadmin')) {
                    $table->dropColumn('is_seen_by_superadmin');
                }
            });
        }
    }
};
