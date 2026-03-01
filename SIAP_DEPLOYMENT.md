# 🎉 PROJECT SIAP DEPLOYMENT!
## web-smknj-2026 → webtest.smknj.sch.id

---

## ✅ FILE DEPLOYMENT SUDAH LENGKAP

Project ini sudah dilengkapi dengan semua file yang diperlukan untuk deployment ke hosting cPanel:

### 📄 Dokumentasi
| File | Deskripsi |
|------|-----------|
| `README.md` | Dokumentasi utama project |
| `DEPLOYMENT.md` | **Panduan deployment lengkap step-by-step** |
| `DEPLOYMENT_CHECKLIST.md` | Quick reference checklist |
| `UPLOAD_STRUCTURE.md` | Struktur file upload & permission |

### ⚙️ Konfigurasi
| File | Deskripsi |
|------|-----------|
| `.env.example` | Template environment variables |
| `.htaccess` | Apache security & caching rules |
| `passenger_wsgi.py` | cPanel/Passenger WSGI configuration |
| `requirements.txt` | Python dependencies |

### 🛠️ Tools
| File | Deskripsi |
|------|-----------|
| `pre_deploy_check.sh` | Pre-deployment checker (Linux/Mac) |
| `pre_deploy_check.bat` | Pre-deployment checker (Windows) |

---

## 🚀 QUICK START DEPLOYMENT

### 1. Persiapan (Di Lokal)

```bash
# 1. Copy .env.example ke .env
copy .env.example .env

# 2. Edit .env dengan nilai production
# - DEBUG=False
# - Generate SECRET_KEY baru
# - Set ALLOWED_HOSTS=webtest.smknj.sch.id
# - Set database credentials

# 3. Run pre-deploy check
pre_deploy_check.bat
```

### 2. Upload ke Hosting

**File yang diupload:**
- ✅ SEMUA file & folder
- ❌ KECUALI: `env/`, `__pycache__/`, `.git/`

**Metode:**
- Upload ZIP ke `/public_html/webtest/`
- Atau via FTP
- Upload `.env` terpisah untuk keamanan

### 3. Setup di Hosting

**A. Database (cPanel → MySQL Databases):**
1. Buat database: `web_smknj_db`
2. Buat user: `dbuser` dengan password
3. Add user ke database dengan ALL PRIVILEGES

**B. Python App (cPanel → Setup Python App):**
1. Create Application
2. App root: `webtest`
3. App domain: `webtest.smknj.sch.id`
4. Startup file: `passenger_wsgi.py`

**C. Install Dependencies:**
```bash
cd /home/usernamecpanel/public_html/webtest
source env/bin/activate
pip install -r requirements.txt
```

**D. Migrasi & Setup:**
```bash
python manage.py migrate
python manage.py collectstatic --noinput
python manage.py createsuperuser
```

**E. Restart App:**
- Setup Python App → Restart

### 4. Testing

- ✅ Homepage: https://webtest.smknj.sch.id/
- ✅ Admin: https://webtest.smknj.sch.id/admin/
- ✅ Upload media test

---

## 📋 DOKUMENTASI LENGKAP

Untuk panduan detail setiap langkah, baca:

1. **DEPLOYMENT.md** - Panduan lengkap dari A-Z
2. **DEPLOYMENT_CHECKLIST.md** - Checklist untuk memastikan tidak ada yang terlewat
3. **UPLOAD_STRUCTURE.md** - Struktur file dan permission settings

---

## 🔧 TROUBLESHOOTING

### Error Umum & Solusi

| Error | Solusi |
|-------|--------|
| 500 Internal Server Error | Cek `/home/usernamecpanel/tmp/passenger.log` |
| Database connection failed | Verify credentials di `.env` |
| Static files 404 | Run `collectstatic` lagi |
| CSRF token invalid | Check `ALLOWED_HOSTS` & `CSRF_TRUSTED_ORIGINS` |

---

## 📞 SUPPORT

- **Email**: it@smknuruljadid.sch.id
- **Django Docs**: https://docs.djangoproject.com/
- **cPanel Python**: https://docs.cpanel.net/knowledge-base/web-services/how-to-install-a-python-wsgi-application/

---

## 🎯 NEXT STEPS SETELAH DEPLOYMENT

1. ✅ Setup SSL/HTTPS di cPanel
2. ✅ Configure email SMTP untuk notifikasi
3. ✅ Setup automatic database backup
4. ✅ Monitor log files secara berkala
5. ✅ Setup domain mapping (DNS)
6. ✅ Test semua fitur website
7. ✅ Dokumentasi credentials & akses

---

## 📊 PROJECT SUMMARY

| Item | Detail |
|------|--------|
| **Domain** | webtest.smknj.sch.id |
| **Framework** | Django 4.2.11 |
| **Python** | 3.8+ |
| **Database** | MySQL 8.0 |
| **Admin Theme** | Django Jazzmin |
| **Deployment** | cPanel + Passenger |
| **Status** | ✅ READY FOR DEPLOYMENT |

---

## 📁 FILE STRUCTURE

```
web-smknj-2026/
├── 📄 README.md                    # Dokumentasi utama
├── 📄 DEPLOYMENT.md                # Panduan deployment lengkap
├── 📄 DEPLOYMENT_CHECKLIST.md      # Quick checklist
├── 📄 UPLOAD_STRUCTURE.md          # Struktur upload & permission
├── 📄 REQUIREMENTS.txt             # Dependencies
├── 📄 .env.example                 # Template environment
├── 📄 .htaccess                    # Apache config
├── 📄 passenger_wsgi.py            # WSGI config
├── 📄 pre_deploy_check.bat         # Windows checker
├── 📄 pre_deploy_check.sh          # Linux checker
│
├── 📁 web_smknj/                   # Django settings
├── 📁 otak_aplikasi/               # Main application
├── 📁 templates/                   # HTML templates
├── 📁 static/                      # Static files
└── 📁 media/                       # User uploads
```

---

## ✨ FEATURES READY

- ✅ Admin Panel (Jazzmin theme)
- ✅ News Management
- ✅ Announcement System
- ✅ Jurusan/Program Keahlian
- ✅ Staff & Guru Management
- ✅ Ekstrakurikuler
- ✅ Fasilitas Lab
- ✅ Statistics Dashboard
- ✅ Global Search
- ✅ Caching System
- ✅ CKEditor Upload
- ✅ Media Files Management

---

## 🔐 SECURITY CHECKLIST

- [ ] `.env` file tidak ter-commit ke Git
- [ ] `DEBUG = False` di production
- [ ] `SECRET_KEY` unique & strong
- [ ] `ALLOWED_HOSTS` configured
- [ ] `.htaccess` protects sensitive files
- [ ] Database user has limited privileges
- [ ] SSL/HTTPS enabled (recommended)

---

## 🎊 CONGRATULATIONS!

Project **web-smknj-2026** sudah siap untuk di-deploy ke **webtest.smknj.sch.id**!

Ikuti panduan di **DEPLOYMENT.md** untuk instruksi lengkap step-by-step.

---

<div align="center">

**SMK NURUL JADID PAITON**

*Berakhlak Mulia | Berwawasan Luas | Berketerampilan*

© 2026 IT Department - All Rights Reserved

</div>
