# Dokumentasi Aplikasi Portfolio

Selamat datang di dokumentasi aplikasi Portfolio, aplikasi berbasis Flutter yang menampilkan portofolio profesional dengan antarmuka interaktif dan fitur-fitur modern. Dokumen ini memberikan panduan penggunaan dan deskripsi fungsionalitas.

## Panduan Penggunaan Aplikasi


### Clone repository:
   ```bash
   git clone https://github.com/yudistiafirman/personal_portfolio_app.git
   cd personal_portfolio_app
  ```

### Instalasi Dependensi

Untuk menjalankan aplikasi ini, pastikan lingkungan pengembangan Flutter dan Dart telah terinstal pada sistem Anda. Verifikasi versi Flutter dengan perintah berikut:
```bash 
flutter --version
```
Buka terminal di direktori proyek, kemudian jalankan perintah untuk mengunduh dependensi:
```bash 
flutter pub get
```

Perintah ini akan menginstal paket-paket yang diperlukan, seperti:

- go_router: Untuk manajemen routing dan navigasi.
- flutter_staggered_grid_view: Untuk layout grid dinamis.
- text_scroll: Untuk animasi teks bergerak.
- custom_navigation_bar: Untuk bottom navigation bar kustom.

### Running Aplikasi

1. Hubungkan emulator (misalnya Android Emulator) atau perangkat fisik ke komputer Anda, dan pastikan perangkat terdeteksi oleh Flutter:
```bash 
flutter devices
```
2. Jalankan aplikasi dengan perintah:
```bash 
flutter run
```
3. Aplikasi akan dibangun dan dijalankan pada emulator atau perangkat yang dipilih.

## Deskripsi Fungsionalitas Aplikasi

Aplikasi ini menyediakan empat layar utama yang menampilkan informasi portofolio profesional:

### 1. Halaman Profil (PersonalScreen):
- Fungsi: Menampilkan informasi pribadi dan statistik profesional.
- Fitur:
  - Foto profil dengan efek lingkaran.
  - informasi kontak (email, telepon, alamat).
  - Statistik pencapaian (pengalaman, bahasa pemrograman, proyek).
- Visual: ![Screenshot_1741938542](https://github.com/user-attachments/assets/0880eead-bc52-42e4-ad86-23be39d4e3f2)

### 2. Halaman Proyek Yang Pernah Dikembangkan (ProjectsScreen)
- Fungsi: Menampilkan daftar proyek dengan kemampuan filter berdasarkan kategori.
- Fitur:
  - Filter proyek berdasarkan kategori (Mobile, Web).
  - Tampilan kartu proyek dengan gambar dan deskripsi.
  - Animasi scroll responsif.
- Visual: ![Screenshot_1741938549](https://github.com/user-attachments/assets/a0f27758-7df0-4416-890a-c3b20543a6ce)

### 3. Halaman Pengelaman Bekerja (ExperienceScreen)
- Fungsi: Menampilkan pengalaman kerja dalam layout grid dinamis.
- Fitur:
  - Staggered grid layout untuk tampilan yang menarik.
  - Efek paralaks pada gambar profil.
  - Text scroll animasi di header.
- Visual:![Screenshot_1741938557](https://github.com/user-attachments/assets/48122483-b08b-42ad-849f-d83808825544)

### 4. Halaman Tecnical Skill Yang Dikuasai (SkillScreen)
- Fungsi: Menampilkan daftar kemampuan teknis.
- Fitur:
  - Daftar skill dengan ikon dan level penguasaan.
- Visual: ![Screenshot_1741938561](https://github.com/user-attachments/assets/6d553c6a-b613-457f-a366-f193695004c8)


## Navigasi Aplikasi 

- Aplikasi menggunakan GoRouter untuk manajemen navigasi dengan rute berikut:
  - /personal: Halaman profil (default route)
  - /projects: Halaman daftar proyek
  - /experience: Halaman pengalaman kerja
  - /skills: Halaman kemampuan teknis

## Struktur Data 

- Aplikasi menggunakan data statis yang disimpan di folder lib/constants/:
  - profile_data.dart: Data profil pribadi
  - project_data.dart: Data proyek dan kategori
  - experience_data.dart: Data pengalaman kerja
  - skill_data.dart: Data kemampuan teknis

## TroubleShooting
- Error "No devices available": Pastikan emulator atau perangkat fisik terhubung dan terdeteksi.
- Dependensi gagal diinstal: Jalankan flutter clean kemudian flutter pub get ulang.
- Gambar tidak muncul: Pastikan path asset di pubspec.yaml sudah benar.







