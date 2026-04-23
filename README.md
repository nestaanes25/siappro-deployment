# SIAPPRO - Sistem Informasi Administrasi Protokol

**SIAPPRO** adalah platform berbasis web yang dirancang untuk mengelola dan mendokumentasikan berbagai kegiatan keprotokolan secara digital. Sistem ini bertujuan untuk meningkatkan efisiensi administrasi, monitoring kegiatan, serta pelaporan data terkait layanan keprotokolan, persidangan, dan perjalanan dinas.

---

## 🚀 Fitur Utama

- **Dashboard Interaktif**: Visualisasi statistik kegiatan dan agenda harian yang dinamis.
- **Manajemen Layanan Keprotokolan**: Pencatatan dan monitoring permintaan layanan protokol.
- **Manajemen Persidangan**: Pengelolaan jadwal dan dokumentasi rapat/sidang.
- **Administrasi Perjalanan Dinas**: Pengaturan surat tugas dan rincian perjalanan dinas.
- **Kunjungan Kerja**: Pendataan kunjungan tamu atau kunjungan ke luar daerah.
- **Penugasan Protokol**: Penjadwalan personil protokol untuk setiap agenda.
- **Ekspor Data**: Mendukung ekspor data ke format PDF (via DomPDF) dan Excel.
- **Log Histori Aktivitas**: Melacak perubahan data yang dilakukan oleh pengguna.
- **Manajemen Pengguna**: Sistem login dengan peran (Role-based Access Control): Super Admin, Admin, dan Eksternal.

---

## 🛠️ Teknologi yang Digunakan

- **Framework**: [Laravel 12+](https://laravel.com)
- **Frontend**: [Tailwind CSS](https://tailwindcss.com) & [Vite](https://vitejs.dev)
- **Database**: MySQL / MariaDB
- **PDF Generator**: Barryvdh Laravel DomPDF
- **Aesthetics**: Modern UI dengan Dark Mode Support, Glassmorphism, dan Micro-animations.

---

## 📋 Prasyarat Sistem

Sebelum memulai, pastikan perangkat Anda sudah terinstal:
- **PHP** >= 8.2
- **Composer** (Dependency Manager PHP)
- **Node.js** & **NPM** (untuk mengelola asset frontend)
- **MySQL/MariaDB Server**

---

## ⚙️ Cara Memulai (Panduan Instalasi)

Ikuti langkah-langkah berikut untuk menjalankan sistem di lingkungan lokal:

### 1. Persiapan Project
Buka terminal dan masuk ke direktori project:
```bash
# Pastikan Anda berada di root folder project
```

### 2. Instalasi Dependensi
Jalankan perintah untuk menginstal library PHP dan asset frontend:
```bash
composer install
npm install
```

### 3. Konfigurasi Environment
Salin file `.env.example` menjadi `.env` dan sesuaikan pengaturan database:
```bash
cp .env.example .env
```
Buka file `.env`, lalu cari dan ubah bagian berikut sesuai konfigurasi database Anda:
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=nama_database_anda
DB_USERNAME=root
DB_PASSWORD=password_database_anda
```

### 4. Generate Application Key
```bash
php artisan key:generate
```

### 5. Migrasi Database & Seeding
Jalankan migrasi untuk membuat tabel, mengisi data awal, dan menghubungkan storage:
```bash
php artisan migrate --seed
php artisan storage:link
```
### 5.1 Import Data Historis 2023
Jika Anda ingin mengimpor data histori kegiatan tahun 2023 dari file CSV:
1. Pastikan Anda memiliki file `protokol_2023.csv` dan `persidangan_2023.csv`.
2. Pindahkan atau salin kedua file tersebut ke dalam folder `storage/app/` di dalam direktori project.
3. Jalankan perintah custom berikut di terminal:
```bash
php artisan import:siappro-2023
```
Perintah ini akan secara otomatis membaca isi file CSV dan memasukkannya ke dalam tabel terkait di database.

### 6. Menjalankan Aplikasi
Gunakan perintah custom yang sudah disediakan (menggunakan `concurrently` untuk server & vite):
```bash
composer dev
```
Atau jika ingin menjalankan secara manual:
- Jalankan server: `php artisan serve`
- Jalankan Vite (untuk CSS/JS): `npm run dev`

Buka browser dan akses di: `http://localhost:8000`

---

## 🔐 Akun Default (Testing)

Anda dapat login menggunakan akun berikut yang dihasilkan dari `UserSeeder`:

**Super Admin**
- Username : `superadmin`
- Password : `Spradmin123#`

**Admin**
- Username : `admin`
- Password : `Admin123#`

**Eksternal**
- Username : `eksternal`
- Password : `Eksternal123#`

---

## 📂 Struktur Penting
- `app/Http/Controllers`: Logika utama aplikasi per modul.
- `app/Models`: Definisi skema tabel dan relasi database.
- `resources/views`: Tampilan user interface (Blade templates).
- `routes/web.php`: Definisi URL/Route aplikasi.
- `public/storage`: Tempat penyimpanan file/dokumen yang diunggah.

---

*Dibuat untuk keperluan laporan kepada Mentor/Instansi.*
