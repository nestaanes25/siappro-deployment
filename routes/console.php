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
    if (!file_exists($sqlPath)) {
        $this->info("File deploy_db.sql tidak ditemukan, lewati import.");
        return 0;
    }

    try {
        if (Schema::hasTable('users') && DB::table('users')->count() > 0) {
            $this->info("Database sudah memiliki data, import dilewati.");
            return 0;
        }

        $this->info("Sedang meng-import deploy_db.sql ke database server...");
        $sql = file_get_contents($sqlPath);
        DB::unprepared($sql);
        $this->info("Database berhasil di-import dengan seluruh data 2023!");
        return 0;
    } catch (\Throwable $e) {
        $this->warn("Info import: " . $e->getMessage());
        return 0;
    }
})->purpose('Import initial SQL dump automatically');
