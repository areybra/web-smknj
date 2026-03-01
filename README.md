# SMK Nurul Jadid Web Portal 2026

Selamat datang di repositori resmi Web Portal SMK Nurul Jadid versi 2026. Proyek ini dibangun menggunakan Django Framework untuk memberikan informasi lengkap mengenai profil sekolah, berita, pengumuman, dan fasilitas bagi siswa maupun masyarakat umum.

[![Django](https://img.shields.io/badge/Django-4.2.11-092E20?style=flat&logo=django)](https://www.djangoproject.com/)
[![Python](https://img.shields.io/badge/Python-3.8+-3776AB?style=flat&logo=python)](https://www.python.org/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=flat&logo=mysql)](https://www.mysql.com/)

---

## 📑 DAFTAR ISI

- [Fitur Utama](#-fitur-utama)
- [Tech Stack](#-tech-stack)
- [Instalasi Lokal](#-instalasi-lokal)
- [Deployment ke Hosting](#-deployment-ke-hosting)
- [Struktur Folder](#-struktur-folder)
- [Kontribusi](#-kontribusi)
- [Lisensi](#-lisensi)

---

## 🚀 Fitur Utama

### 📰 **Pusat Informasi Berita & Pengumuman**
Sistem manajemen konten (CMS) untuk publikasi berita sekolah dan pengumuman penting dengan kategori pendukung, filter, dan pencarian.

### 👥 **Profil Sekolah & Struktur Organisasi**
Informasi detail mengenai sejarah, visi-misi, serta daftar tenaga pendidik dan kependidikan dengan foto dan jabatan.

### 🎓 **Program Keahlian (Jurusan)**
Katalog lengkap jurusan dengan informasi kompetensi, prospek karir, fasilitas, mitra industri, dan testimoni alumni.

### 🔬 **Fasilitas & Lab**
Dokumentasi laboratorium dan peralatan penunjang pembelajaran di setiap jurusan dengan gambar dan deskripsi lengkap.

### 🏃 **Ekstrakurikuler**
Informasi jadwal dan kegiatan pengembangan diri siswa di luar jam pelajaran dengan kategori dan galeri kegiatan.

### 📊 **Statistik Sekolah Dinamis**
Dashboard statistik siswa, instruktur, dan mitra industri yang terintegrasi dan update otomatis.

### 🔍 **Pencarian Global**
Memudahkan pengguna menemukan informasi di seluruh modul website dengan satu kolom pencarian.

### ⚙️ **Admin Panel Premium**
Menggunakan **Django Jazzmin** untuk antarmuka manajemen data yang modern, user-friendly, dan responsive.

### 💾 **Caching System**
Implementasi cache untuk meningkatkan performa dan kecepatan loading halaman.

---

## 🛠️ Tech Stack

| Kategori | Teknologi |
|----------|-----------|
| **Backend** | Python 3.8+, Django 4.2.11 |
| **Database** | MySQL 8.0 |
| **Frontend** | HTML5, Tailwind CSS, Bootstrap 5 |
| **Icons** | Material Symbols, Font Awesome |
| **Editor** | CKEditor 4 (Rich Text Editor) |
| **Admin Theme** | Django Jazzmin (AdminLTE) |
| **Caching** | Django Local Memory Cache |
| **Deployment** | cPanel, Passenger, Gunicorn |

---

## 📋 Prasyarat

Sebelum memulai, pastikan Anda telah menginstal:

- ✅ **Python 3.8** atau versi di atasnya
- ✅ **MySQL Server** 8.0 atau MariaDB
- ✅ **pip** (Python Package Manager)
- ✅ **Virtualenv** (disarankan untuk isolasi environment)
- ✅ **Git** (untuk version control)

---

## ⚙️ Instalasi Lokal

Ikuti langkah-langkah di bawah ini untuk menjalankan project di lingkungan lokal:

### 1. Clone Repositori

```bash
git clone https://github.com/username/web-smknj-2026.git
cd web-smknj-2026
```

### 2. Buat Virtual Environment

```bash
python -m venv env
```

### 3. Aktifkan Virtual Environment

**Windows:**
```bash
env\Scripts\activate
```

**Linux/Mac:**
```bash
source env/bin/activate
```

### 4. Instal Dependensi

```bash
pip install --upgrade pip
pip install -r requirements.txt
```

### 5. Konfigurasi Environment

```bash
# Copy file example
copy .env.example .env    # Windows
cp .env.example .env      # Linux/Mac

# Edit file .env dan sesuaikan konfigurasi
```

**Isi file `.env`:**
```env
DEBUG=True
SECRET_KEY=django-insecure-your-secret-key-here
ALLOWED_HOSTS=localhost,127.0.0.1

DB_NAME=web_smknj_db
DB_USER=root
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=3306
```

### 6. Buat Database

```sql
CREATE DATABASE web_smknj_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

### 7. Migrasi Database

```bash
python manage.py makemigrations
python manage.py migrate
```

### 8. Buat Superuser (Admin)

```bash
python manage.py createsuperuser
```

### 9. Collect Static Files (Optional untuk development)

```bash
python manage.py collectstatic --noinput
```

---

## 🏃 Menjalankan Aplikasi

### Development Server

```bash
python manage.py runserver
```

Akses aplikasi:
- 🌐 **Homepage**: http://127.0.0.1:8000/
- 🔐 **Admin Panel**: http://127.0.0.1:8000/admin/

---

## 📁 Struktur Folder

```
web-smknj-2026/
├── .env.example              # Template environment variables
├── .gitignore                # Git ignore rules
├── .htaccess                 # Apache configuration
├── manage.py                 # Django management script
├── passenger_wsgi.py         # cPanel/Passenger WSGI config
├── requirements.txt          # Python dependencies
├── README.md                 # Dokumentasi utama
├── DEPLOYMENT.md             # Panduan deployment lengkap
│
├── web_smknj/                # Django project settings
│   ├── __init__.py
│   ├── settings.py           # Konfigurasi utama
│   ├── urls.py               # URL routing utama
│   ├── wsgi.py               # WSGI application
│   └── asgi.py               # ASGI application
│
├── otak_aplikasi/            # Main application
│   ├── admin.py              # Admin configuration
│   ├── models.py             # Database models
│   ├── views.py              # View functions
│   ├── urls.py               # URL routing app
│   ├── forms.py              # Django forms
│   ├── context_processors.py # Template context
│   ├── decorators.py         # Custom decorators
│   ├── signals.py            # Django signals
│   └── utils.py              # Utility functions
│
├── templates/                # Global templates
│   ├── admin/                # Admin overrides
│   ├── layouts/              # Base layouts
│   └── *.html                # Global pages
│
├── static/                   # Static files
│   ├── css/                  # Stylesheets
│   ├── js/                   # JavaScript files
│   └── images/               # Images & logos
│
└── media/                    # User uploaded files
    ├── news/                 # Berita images
    ├── staff/                # Staff photos
    └── uploads/              # CKEditor uploads
```

---

## 🌐 Deployment ke Hosting

Untuk deployment ke hosting cPanel dengan domain **webtest.smknj.sch.id**, ikuti panduan lengkap di:

📖 **[DEPLOYMENT.md](DEPLOYMENT.md)**

### Quick Deploy Checklist:

1. ✅ Setup `.env` production
2. ✅ Upload files ke hosting
3. ✅ Buat database di cPanel
4. ✅ Setup Python App di cPanel
5. ✅ Install dependencies
6. ✅ Jalankan migrasi
7. ✅ Collect static files
8. ✅ Buat superuser
9. ✅ Test website

---

## 🧪 Testing

### Run Tests

```bash
python manage.py test otak_aplikasi
```

### Check System

```bash
python manage.py check
```

---

## 🤝 Kontribusi

Kami sangat menghargai kontribusi dari semua pihak untuk pengembangan project ini. Jika Anda ingin berkontribusi:

1. **Fork** repositori ini
2. Buat **Feature Branch** (`git checkout -b feature/AmazingFeature`)
3. **Commit** perubahan (`git commit -m 'Add some AmazingFeature'`)
4. **Push** ke branch (`git push origin feature/AmazingFeature`)
5. Buka **Pull Request**

### Development Guidelines

- Gunakan **PEP 8** style guide untuk Python code
- Tulis **docstrings** untuk fungsi dan class
- Buat **unit tests** untuk fitur baru
- Update **dokumentasi** jika diperlukan

---

## 📞 Support

Jika mengalami masalah atau memiliki pertanyaan:

- 📧 Email: [it@smknuruljadid.sch.id](mailto:it@smknuruljadid.sch.id)
- 📚 Django Docs: https://docs.djangoproject.com/
- 🐛 Issue Tracker: GitHub Issues

---

## 📄 Lisensi

Project ini dilindungi di bawah lisensi proprietary SMK Nurul Jadid. 
Dilarang mendistribusikan ulang tanpa izin.

---

## 👥 Tim Pengembang

Developed by **IT Department - SMK Nurul Jadid Paiton**

© 2026 SMK Nurul Jadid. All Rights Reserved.

---

## 🔗 Links

- 🏫 **Website**: https://smknuruljadid.sch.id
- 📱 **Facebook**: SMK Nurul Jadid Paiton
- 📸 **Instagram**: @smknuruljadid
- 💼 **LinkedIn**: SMK Nurul Jadid

---

<div align="center">

**Membangun Masa Depan dengan Teknologi**

🌟 **BERAKHLAK MULIA | BERWAWASAN LUAS | BERKETERAMPILAN** 🌟

</div>
