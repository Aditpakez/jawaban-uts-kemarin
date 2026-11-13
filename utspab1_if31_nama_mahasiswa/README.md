# UTS PAB 1 - utspab1_if31_nama_mahasiswa

Project Ujian Tengah Semester (UTS) Pemrograman Aplikasi Bergerak 1 (PAB 1).

## 📋 Detail Pengerjaan Soal

### 1. Project Flutter
- **Nama Project**: `utspab1_if31_nama_mahasiswa`
- **Framework**: Flutter (Dart)

### 2. Pemisahan Widget `KampusKu`
- File widget terpisah berada pada: [`lib/kampus_ku.dart`](lib/kampus_ku.dart)
- File entry point: [`lib/main.dart`](lib/main.dart) yang mengimpor dan memanggil widget `KampusKu()`.

### 3. Tampilan Sesuai Mockup
Menggunakan widget dasar Flutter:
- **`Image`**: Banner foto kampus (`Image.asset` dari `assets/images/kampus.jpg` dengan fallback network & error builder).
- **`Text`**: Judul kampus *Universitas Multi Data Palembang*, lokasi, data akademik (Status, Akreditasi, Tanggal Berdiri, Rasio Dosen), kontak, dan alamat.
- **`Icons`**: `Icons.phone`, `Icons.email`, `Icons.language` pada baris kontak.
- **`Button`**: `OutlinedButton` dengan teks **Lihat Maps** dan efek interaktif SnackBar.
- **Styling**: Menggunakan `Container` dengan `BoxDecoration` (border & border radius), `Padding`, `Margin`, `Row`, `Column`, serta `TextStyle` yang disesuaikan proporsinya agar presisi dengan mockup.

---

## 🚀 Cara Menjalankan

```bash
cd utspab1_if31_nama_mahasiswa
flutter pub get
flutter run
```

Untuk menjalankan unit & widget test:
```bash
flutter test
```
