# Tugas Harian 4 - Pemrograman Mobile

Aplikasi Flutter dengan **NavigationBar** yang berjalan di setiap halaman, mengikuti materi Pertemuan 2 (ITENAS).

## Identitas

| | |
|---|---|
| Nama | Farrel Gavin Azarya Fadillillah |
| NIM | 152024016 |
| Program Studi | Informatika |

## Fitur

- **Home**: ikon mahasiswa, tulisan "Selamat datang mahasiswa", dan dua tombol (E-Money dan Perpustakaan).
- **E-Money**: saldo dan menu layanan (Top Up, Transfer, Scan QR, dan lainnya) yang membuka halaman tujuannya masing-masing.
- **Perpustakaan**: menu Tambah akun dan Tambah buku.
- **Riwayat**: daftar transaksi.
- **Profil**: menampilkan nama, NIM, dan program studi.
- **Navbar** reusable (Home, Riwayat, Profil) yang dipasang di setiap halaman.

## Struktur Folder `lib/`

```
lib/
├── main.dart
├── pages/
│   ├── home_page.dart
│   ├── riwayat_page.dart
│   ├── profil_page.dart
│   ├── emoney_page.dart
│   ├── perpustakaan_page.dart
│   ├── halaman_menu.dart
│   └── halaman_tujuan.dart
└── widgets/
    └── navbar.dart
```

- `main.dart`: file utama yang menjalankan aplikasi dan mengatur halaman awal.
- `pages/`: halaman-halaman aplikasi.
- `widgets/navbar.dart`: komponen navbar yang dipakai ulang di beberapa halaman.

## Cara Menjalankan

```bash
flutter pub get
flutter run
```

## Screenshot

| Home | E-Money | Perpustakaan |
|---|---|---|
| <img src="screenshots/home.png" width="200"> | <img src="screenshots/emoney.png" width="200"> | <img src="screenshots/perpustakaan.png" width="200"> |

| Riwayat | Profil |
|---|---|
| <img src="screenshots/riwayat.png" width="200"> | <img src="screenshots/profil.png" width="200"> |
