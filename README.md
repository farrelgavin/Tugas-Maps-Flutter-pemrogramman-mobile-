Tugas 5 - Pemrograman Mobile: Implementasi Google Maps pada Flutter
Nama: Farrel Gavin
NPM: 152024016
Mata Kuliah: Pemrograman Mobile

---
📱 Fitur Aplikasi
Halaman Utama (Home): Menampilkan sambutan mahasiswa beserta tombol navigasi ke berbagai menu (E-Money, Perpustakaan, dan Google Maps).
Halaman Menu: Berisi daftar menu interaktif (Top Up, Transfer, Scan, Bayar).
Halaman Google Maps: Menampilkan peta interaktif menggunakan `google_maps_flutter` lengkap dengan titik koordinat (LatLng) dan Marker (penanda lokasi kampus beserta InfoWindow).
---
🛠️ Teknologi & Tools yang Digunakan
Framework: Flutter (Dart)
Package: `google_maps_flutter`
API Service: Google Cloud Console (Maps JavaScript API & Maps SDK for Android)
IDE: Visual Studio Code
---
🚀 Langkah-Langkah Instalasi & Menjalankan Project
Clone repository ini ke komputer lokal Anda:
```bash
   git clone https://github.com/farrelgavin/Tugas-Maps-Flutter-pemrogramman-mobile-.git
   ```
Masuk ke direktori project:
```bash
   cd Tugas-Maps-Flutter-pemrogramman-mobile-
   ```
Unduh dependencies / package Flutter:
```bash
   flutter pub get
   ```
Jalankan aplikasi:
Untuk menjalankan di browser (Chrome):
```bash
     flutter run -d chrome
     ```
Untuk menjalankan di Emulator/Android Device:
```bash
     flutter run
     ```
---
📂 Struktur Folder Proyek
```text
lib/
├── pages/
│   ├── emoney_page.dart
│   ├── halaman_maps.dart       <-- Halaman Google Maps (Tugas 5)
│   ├── halaman_menu.dart
│   ├── halaman_tujuan.dart
│   ├── home_page.dart          <-- Menu navigasi utama
│   ├── perpustakaan_page.dart
│   ├── profil_page.dart
│   └── riwayat_page.dart
├── widgets/
│   └── navbar.dart
└── main.dart
```
---