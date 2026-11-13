# Panduan Git: Clone Repo Orang ke Repo Sendiri & Ganti Akun di PC Kampus

Panduan lengkap langkah demi langkah untuk menyalin repository orang lain, memindahkannya ke repository GitHub akun sendiri, mengatasi akun lama yang tertinggal di PC kampus/lab, dan mengamankan akun setelah selesai.

---

## 1. Logout / Hapus Akun GitHub Lama di PC Kampus

Sebelum memulai, pastikan PC tidak memakai login milik mahasiswa atau orang lain.

### Cara Cepat (Lewat Terminal / CMD):
Jalankan perintah ini untuk langsung menghapus kredensial tersimpan:
```cmd
cmdkey /delete:LegacyGeneric:target=git:https://github.com
```

### Cara Manual (Lewat GUI):
1. Buka **Start Menu** di Windows, ketik **Credential Manager** (Pengelola Kredensial), lalu tekan Enter.
2. Pilih tab **Windows Credentials**.
3. Di bagian **Generic Credentials**, cari entri `git:https://github.com`.
4. Klik tanda panah bawah pada entri tersebut, lalu pilih **Remove** (Hapus).

---

## 2. Buat Repository Baru di Akun GitHub Sendiri

1. Buka browser dan login ke akun GitHub Anda.
2. Buat repository baru:
   - Klik ikon **+** di pojok kanan atas → **New repository**.
   - Berikan nama repository (contoh: `wisata_candi`).
   - **PENTING:** Jangan centang opsi *Add a README file*, *.gitignore*, atau *license* (biarkan kosong agar tidak terjadi konflik/conflict).
   - Klik **Create repository**.
3. Salin URL repo Anda, contoh:
   ```text
   https://github.com/username-kamu/wisata_candi.git
   ```

---

## 3. Clone Repo Asal & Masuk ke Foldernya

Buka terminal (Git Bash, Command Prompt, atau PowerShell), jalankan:

```bash
git clone https://github.com/nurrachmat-nr/wisata_candi_nurrachmat.git
cd wisata_candi_nurrachmat
```

---

## 4. Ganti Remote URL ke Repo Sendiri

Pilih salah satu metode di bawah ini sesuai kebutuhan:

### Opsi A: Tetap Mempertahankan Riwayat Commit Aslinya (Disarankan)
Gunakan opsi ini jika ingin riwayat commit dari pembuat asli tetap tersimpan:
```bash
# 1. Hapus remote asal
git remote remove origin

# 2. Sambungkan ke repo baru milik Anda
git remote add origin https://github.com/username-kamu/wisata_candi.git

# 3. Pastikan cabang utama bernama 'main'
git branch -M main
```

### Opsi B: Mulai Bersih Sebagai Proyek Baru Milik Sendiri
Gunakan opsi ini jika ingin riwayat commit lama dihapus dan mulai dari commit pertama Anda:
```bash
# Hapus folder .git bawaan (Windows CMD / PowerShell)
rmdir /s /q .git

# Inisialisasi ulang
git init
git add .
git commit -m "Initial commit wisata candi"
git branch -M main
git remote add origin https://github.com/username-kamu/wisata_candi.git
```

---

## 5. Set Identitas Lokal & Push (Login Akun Sendiri)

1. Atur identitas commit khusus untuk folder proyek ini (menggunakan `--local` agar tidak merusak konfigurasi global PC kampus):
   ```bash
   git config user.name "Nama Kamu"
   git config user.email "email-kamu@gmail.com"
   ```

2. Jalankan perintah push:
   ```bash
   git push -u origin main
   ```

3. **Login GitHub:**
   - Jendela pop-up dari **Git Credential Manager** atau browser akan terbuka otomatis.
   - Pilih **Sign in with your browser**.
   - Masukkan username/email dan password akun GitHub Anda, lalu setujui otorisasi (*Authorize*).
   - Proses upload kode akan berjalan hingga 100%.

---

## 6. Troubleshooting: Error 403 (Permission Denied)

Jika saat melakukan push muncul pesan error seperti:
```text
remote: Permission to Aditpakez/test.git denied to madityaanjasmara17-boop.
fatal: unable to access 'https://github.com/Aditpakez/test.git/': The requested URL returned error: 403
```

### Penyebab:
Git masih menggunakan sesi login dari akun lama (`madityaanjasmara17-boop`), sehingga GitHub menolak akses upload ke repo milik akun lain (`Aditpakez`).

### Solusi Cepat:
1. Hapus kredensial lama di terminal:
   ```cmd
   cmdkey /delete:LegacyGeneric:target=git:https://github.com
   ```
   *(Atau hapus lewat Windows Credential Manager seperti pada Langkah 1).*
2. Push ulang:
   ```bash
   git push -u origin main
   ```
3. Login menggunakan akun yang memiliki repo tersebut.

---

## 7. Logout Kembali Setelah Selesai (Keamanan di PC Kampus)

Sebelum meninggalkan lab/kampus, amankan akun Anda agar tidak digunakan oleh orang berikutnya:

1. Hapus kredensial tersimpan:
   ```cmd
   cmdkey /delete:LegacyGeneric:target=git:https://github.com
   ```
2. Buka browser, pastikan akun GitHub Anda sudah di-**Sign Out**.

