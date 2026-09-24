<?php

use Illuminate\Foundation\Inspiring;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

Artisan::command('inspire', function () {
    $this->comment(Inspiring::quote());
})->purpose('Display an inspiring quote');

Artisan::command('app:import-db', function () {
    $sqlPath = database_path('deploy_db.sql');

    try {
        if (!Schema::hasTable('users') || DB::table('users')->count() === 0) {
            if (file_exists($sqlPath)) {
                $this->info("Mengimport deploy_db.sql ke database server...");
                $sql = file_get_contents($sqlPath);
                DB::unprepared($sql);
                $this->info("deploy_db.sql berhasil diimport!");
            }
        } else {
            $this->info("Database sudah berisi data.");
        }

        // Jalankan migrasi tambahan jika ada tabel/kolom baru seperti sessions/cache
        $this->info("Menjalankan migrasi pelengkap...");
        Artisan::call('migrate', ['--force' => true]);
        $this->info("Migrasi pelengkap selesai!");

        return 0;
    } catch (\Throwable $e) {
        $this->warn("Info DB setup: " . $e->getMessage());
        return 0;
    }
})->purpose('Import initial SQL dump and run supplementary migrations');
