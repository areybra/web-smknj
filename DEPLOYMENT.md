# 🚀 PANDUAN DEPLOYMENT KE CPANEL
## Domain: webtest.smknj.sch.id

Panduan lengkap deployment aplikasi Django ke hosting cPanel dengan Passenger.

---

## 📋 DAFTAR ISI

1. [Persiapan File](#1-persiapan-file)
2. [Upload ke Hosting](#2-upload-ke-hosting)
3. [Setup Database](#3-setup-database)
4. [Konfigurasi Python](#4-konfigurasi-python)
5. [Setup Passenger](#5-setup-passenger)
6. [Migrasi & Collectstatic](#6-migrasi--collectstatic)
7. [Testing](#7-testing)
8. [Troubleshooting](#8-troubleshooting)

---

## 1. PERSIAPAN FILE

### A. Buat File `.env` Production

Copy file `.env.example` menjadi `.env` dan sesuaikan:

```bash
# Copy file
cp .env.example .env
```

**Edit `.env` dengan nilai production:**

```env
# SECURITY
DEBUG=False
SECRET_KEY=generate-django-secret-key-disini
ALLOWED_HOSTS=webtest.smknj.sch.id,www.webtest.smknj.sch.id

# DATABASE (sesuaikan dengan username cPanel Anda)
DB_NAME=usernamecpanel_web_smknj_db
DB_USER=usernamecpanel_dbuser
DB_PASSWORD=password_database_anda
DB_HOST=localhost
DB_PORT=3306

# EMAIL (Optional)
# EMAIL_HOST=smtp.gmail.com
# EMAIL_PORT=587
# EMAIL_USE_TLS=True
# EMAIL_HOST_USER=your-email@gmail.com
# EMAIL_HOST_PASSWORD=your-app-password
```

> ⚠️ **PENTING**: Ganti `usernamecpanel` dengan username cPanel Anda yang sebenarnya!

### B. Generate Secret Key Baru

```bash
python -c "from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())"
```

Copy key yang dihasilkan dan paste ke `.env`.

### C. Update `passenger_wsgi.py`

Edit file `passenger_wsgi.py` dan ganti `USERNAME = 'usernamecpanel'` dengan username cPanel Anda.

---

## 2. UPLOAD KE HOSTING

### A. Struktur Folder di cPanel

Struktur folder yang direkomendasikan:

```
/home/usernamecpanel/
├── public_html/
│   └── webtest/          # Folder utama aplikasi
│       ├── .env
│       ├── .htaccess
│       ├── manage.py
│       ├── passenger_wsgi.py
│       ├── requirements.txt
│       ├── web_smknj/
│       ├── otak_aplikasi/
│       ├── static/
│       ├── templates/
│       ├── media/
│       └── env/          # Virtual environment (upload setelah dibuat)
```

### B. Metode Upload

**Opsi 1: File Manager cPanel**
1. Login ke cPanel
2. Buka **File Manager**
3. Navigate ke `public_html`
4. Buat folder `webtest`
5. Upload semua file project (kecuali `env/`, `__pycache__/`, `.git/`)
6. Extract jika upload dalam bentuk ZIP

**Opsi 2: FTP (FileZilla)**
1. Connect ke FTP server
2. Navigate ke `/public_html/webtest/`
3. Upload semua file

**Opsi 3: Git (Jika tersedia di hosting)**
```bash
cd /home/usernamecpanel/public_html/webtest
git clone https://github.com/username/web-smknj-2026.git .
```

---

## 3. SETUP DATABASE

### A. Buat Database di cPanel

1. Login ke **cPanel**
2. Buka **MySQL® Databases** (bagian Databases)
3. **Buat Database Baru:**
   - Nama: `web_smknj_db`
   - Klik **Create Database**

4. **Buat User Database:**
   - Username: `dbuser` (akan jadi `usernamecpanel_dbuser`)
   - Password: Generate strong password
   - Klik **Create User**

5. **Add User to Database:**
   - Pilih user dan database yang dibuat
   - Klik **Add**
   - Centang **ALL PRIVILEGES**
   - Klik **Make Changes**

### B. Catat Kredensial Database

Simpan informasi berikut untuk file `.env`:
- Database Name: `usernamecpanel_web_smknj_db`
- Database User: `usernamecpanel_dbuser`
- Database Password: `password_yang_dibuat`
- Host: `localhost`

---

## 4. KONFIGURASI PYTHON

### A. Setup Python di cPanel

1. Login ke **cPanel**
2. Buka **Setup Python App** (bagian Software)
3. Klik **Create Application**

### B. Konfigurasi Application

Isi form dengan data berikut:

| Field | Value |
|-------|-------|
| **Python version** | 3.8 - 3.11 (sesuaikan dengan yang tersedia) |
| **App Type** | Passenger |
| **App root** | `webtest` |
| **App domain** | `webtest.smknj.sch.id` |
| **App startup file** | `passenger_wsgi.py` |
| **Passenger log file** | `/home/usernamecpanel/tmp/passenger.log` |

### C. Buat Virtual Environment

Setelah aplikasi dibuat:

1. Copy **Command** yang ditampilkan di bagian "Enter into terminal"
2. Buka **Terminal** di cPanel (atau SSH)
3. Paste command dan jalankan

Contoh command:
```bash
cd /home/usernamecpanel/public_html/webtest
python3.11 -m venv env
```

### D. Instal Dependencies

Aktifkan virtual environment dan instal requirements:

```bash
# Aktifkan venv
source /home/usernamecpanel/public_html/webtest/env/bin/activate

# Upgrade pip
pip install --upgrade pip

# Instal dependencies
pip install -r requirements.txt
```

---

## 5. SETUP PASSENGER

### A. Restart Application

Setelah instalasi dependencies selesai:

1. Kembali ke **Setup Python App** di cPanel
2. Cari aplikasi yang dibuat
3. Klik tombol **Restart** (icon refresh)

### B. Cek Log File

Jika ada error, cek log file:
```bash
tail -f /home/usernamecpanel/tmp/passenger.log
```

---

## 6. MIGRASI & COLLECTSTATIC

### A. Jalankan Migrasi

```bash
# Pastikan venv aktif
source /home/usernamecpanel/public_html/webtest/env/bin/activate

# Navigate ke project directory
cd /home/usernamecpanel/public_html/webtest

# Makemigrations (jika ada perubahan model)
python manage.py makemigrations

# Migrate database
python manage.py migrate
```

### B. Collect Static Files

```bash
python manage.py collectstatic --noinput
```

File static akan dikumpulkan di `/home/usernamecpanel/public_html/webtest/staticfiles/`

### C. Buat Superuser (Admin)

```bash
python manage.py createsuperuser
```

Isi:
- Username: (nama admin)
- Email: (email admin)
- Password: (password kuat)

---

## 7. TESTING

### A. Test Akses Website

1. Buka browser
2. Akses: `https://webtest.smknj.sch.id/`
3. Seharusnya muncul halaman beranda

### B. Test Admin Panel

1. Akses: `https://webtest.smknj.sch.id/admin/`
2. Login dengan superuser yang dibuat
3. Cek semua model terdaftar dengan benar

### C. Test Upload Media

1. Login ke admin
2. Coba upload gambar (berita, profil, dll)
3. Pastikan file tersimpan di folder `media/`
4. Cek file bisa diakses via URL

---

## 8. TROUBLESHOOTING

### Error: 500 Internal Server Error

**Cek Log File:**
```bash
tail -100 /home/usernamecpanel/tmp/passenger.log
```

**Penyebab Umum:**
- `.env` file tidak ada atau salah konfigurasi
- Database credentials salah
- Dependencies belum terinstall
- Path di `passenger_wsgi.py` salah

### Error: Database Connection Failed

**Solusi:**
1. Cek kredensial di `.env`
2. Pastikan user database punya akses
3. Test koneksi manual:
```bash
mysql -u usernamecpanel_dbuser -p usernamecpanel_web_smknj_db
```

### Error: Static Files 404

**Solusi:**
1. Pastikan `collectstatic` sudah dijalankan
2. Cek `STATIC_ROOT` di `settings.py`
3. Pastikan folder `staticfiles` ada dan accessible

### Error: Media Files Tidak Muncul

**Solusi:**
1. Pastikan folder `media/` writable (chmod 755)
2. Cek `.htaccess` tidak memblokir akses
3. Tambahkan URL configuration di `urls.py` production:

```python
# web_smknj/urls.py
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    # ... url patterns ...
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
else:
    # Untuk production di cPanel
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
```

### Error: CSRF Token Invalid

**Solusi:**
1. Pastikan `ALLOWED_HOSTS` di `.env` benar
2. Tambahkan domain ke `CSRF_TRUSTED_ORIGINS` di `settings.py`

---

## 📝 CHECKLIST DEPLOYMENT

- [ ] File `.env` dibuat dengan konfigurasi production
- [ ] `SECRET_KEY` di-generate baru
- [ ] `DEBUG = False`
- [ ] `ALLOWED_HOSTS` sudah benar
- [ ] Database dibuat di cPanel
- [ ] User database dibuat dan punya akses
- [ ] Kredensial database di `.env` benar
- [ ] Virtual environment dibuat
- [ ] Dependencies terinstall
- [ ] `passenger_wsgi.py` path sudah benar
- [ ] Python App dibuat di cPanel
- [ ] Migrasi database dijalankan
- [ ] Collectstatic dijalankan
- [ ] Superuser dibuat
- [ ] Website bisa diakses
- [ ] Admin panel bisa diakses
- [ ] Upload media berfungsi

---

## 🔐 KEAMANAN PRODUCTION

### File yang Harus Dilindungi

Pastikan file berikut **TIDAK** bisa diakses via browser:
- `.env`
- `manage.py` (optional)
- `.git/`
- `__pycache__/`
- `.py` files

File `.htaccess` sudah mengkonfigurasi proteksi ini.

### Rekomendasi Tambahan

1. **SSL/HTTPS**: Aktifkan SSL di cPanel
2. **Backup Database**: Setup automatic backup
3. **Update Berkala**: Keep Django dan dependencies updated
4. **Monitor Log**: Cek log file secara berkala

---

## 📞 SUPPORT

Jika mengalami masalah, cek:
- Django Documentation: https://docs.djangoproject.com/
- cPanel Python Docs: https://docs.cpanel.net/knowledge-base/web-services/how-to-install-a-python-wsgi-application/
- Passenger Docs: https://www.phusionpassenger.com/

---

© 2026 SMK Nurul Jadid - IT Department
