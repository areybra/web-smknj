# 📁 STRUKTUR FILE DEPLOYMENT
## File yang Diupload ke Hosting

---

## ✅ FILE YANG DIUPLOAD

Upload SEMUA file dan folder berikut ke `/public_html/webtest/`:

```
webtest/
├── .env                          ⚠️ JANGAN COMMIT KE GIT (sensitive)
├── .env.example                  ✓ Template untuk .env
├── .gitignore                    ✓ Git ignore rules
├── .htaccess                     ✓ Apache configuration
├── manage.py                     ✓ Django management script
├── passenger_wsgi.py             ✓ cPanel WSGI config
├── requirements.txt              ✓ Python dependencies
├── README.md                     ✓ Dokumentasi utama
├── DEPLOYMENT.md                 ✓ Panduan deployment
├── DEPLOYMENT_CHECKLIST.md       ✓ Quick checklist
├── pre_deploy_check.sh           ✓ Deployment check script (Linux)
├── pre_deploy_check.bat          ✓ Deployment check script (Windows)
│
├── web_smknj/                    ✓ Django project settings
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   ├── wsgi.py
│   └── asgi.py
│
├── otak_aplikasi/                ✓ Main application
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── models.py
│   ├── views.py
│   ├── urls.py
│   ├── forms.py (jika ada)
│   ├── context_processors.py
│   ├── decorators.py
│   ├── signals.py
│   └── utils.py
│
├── templates/                    ✓ HTML templates
│   ├── admin/
│   ├── layouts/
│   ├── index.html
│   └── *.html
│
├── static/                       ✓ Static files (CSS, JS, images)
│   ├── css/
│   │   └── jazzmin-custom.css
│   ├── js/
│   │   └── admin-hash-tabs.js
│   └── images/
│       ├── logo/
│       └── profil/
│
└── media/                        ✓ Folder untuk user uploads (akan diisi saat runtime)
    ├── news/
    ├── staff/
    └── uploads/
```

---

## ❌ FILE YANG TIDAK DIUPLOAD

File dan folder berikut **TIDAK PERLU** diupload:

```
❌ env/                    - Virtual environment (buat di hosting)
❌ __pycache__/            - Python cache (akan dibuat otomatis)
❌ *.pyc, *.pyo            - Compiled Python files
❌ .git/                   - Git repository
❌ *.log                   - Log files
❌ db.sqlite3              - SQLite database (tidak digunakan)
❌ staticfiles/            - Akan dibuat saat collectstatic
```

---

## 🔐 FILE SENSITIVE (.env)

File `.env` **TIDAK BOLEH** di-commit ke Git repository!

### Cara Aman Upload .env:

**Opsi 1: Upload Manual via File Manager**
1. Login cPanel → File Manager
2. Navigate ke `/public_html/webtest/`
3. Create file baru: `.env`
4. Copy-paste isi dari `.env.example`
5. Edit dengan nilai production

**Opsi 2: Upload via FTP**
1. Buat file `.env` di lokal dengan nilai production
2. Upload via FTP ke `/public_html/webtest/.env`
3. Set permission: 600 (hanya owner bisa baca/tulis)

**Opsi 3: SSH/ Terminal**
```bash
cd /home/usernamecpanel/public_html/webtest
nano .env
# Paste konfigurasi
# Ctrl+X, Y, Enter untuk save
chmod 600 .env
```

---

## 📦 REKOMENDASI UPLOAD

### Metode Terbaik: ZIP Upload

1. **Di Lokal:**
   ```bash
   # Buat ZIP tanpa folder yang tidak perlu
   # Exclude: env/, __pycache__/, .git/, *.pyc
   ```

2. **Upload ZIP ke cPanel:**
   - File Manager → Upload
   - Extract di `/public_html/webtest/`

3. **Upload .env terpisah:**
   - Upload manual untuk keamanan

### Metode Alternatif: FTP

1. Connect ke FTP
2. Navigate ke `/public_html/webtest/`
3. Upload semua file (kecuali yang di-exclude)
4. Upload `.env` manual

---

## 📂 PERMISSION SETTINGS

Setelah upload, set permission berikut:

| File/Folder | Permission | Keterangan |
|-------------|------------|------------|
| `.env` | 600 | Hanya owner bisa baca/tulis |
| `manage.py` | 755 | Executable |
| `passenger_wsgi.py` | 644 | Read-only |
| `media/` | 755 | Writable untuk upload |
| `static/` | 755 | Read-only |
| `staticfiles/` | 755 | Writable untuk collectstatic |
| `*.py` | 644 | Read-only |

**Cara Set Permission di cPanel:**
1. File Manager → Select file/folder
2. Click "Permissions"
3. Set angka permission
4. Save

---

## 🔄 UPDATE STRATEGY

### Untuk Update Kode:

1. **Backup Database:**
   ```bash
   mysqldump -u user -p database > backup_$(date +%Y%m%d).sql
   ```

2. **Upload File Baru:**
   - Upload file yang berubah saja
   - Atau upload semua (replace)

3. **Run Migrations:**
   ```bash
   source env/bin/activate
   python manage.py migrate
   ```

4. **Collect Static:**
   ```bash
   python manage.py collectstatic --noinput
   ```

5. **Restart App:**
   - Setup Python App → Restart

### Rollback Plan:

Simpan backup sebelum update:
- Backup database
- Backup folder code lama
- Test rollback procedure

---

## 📋 UPLOAD CHECKLIST

- [ ] Semua file ter-upload
- [ ] `.env` dibuat dengan nilai production
- [ ] Permission file sudah benar
- [ ] Virtual environment dibuat
- [ ] Dependencies terinstall
- [ ] Database dibuat dan terkoneksi
- [ ] Migrations dijalankan
- [ ] Static files ter-collect
- [ ] App direstart
- [ ] Website bisa diakses
- [ ] Admin panel works
- [ ] Upload media berfungsi

---

© 2026 SMK Nurul Jadid - IT Department
