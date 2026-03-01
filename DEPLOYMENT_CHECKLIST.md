# 📦 DEPLOYMENT CHECKLIST - Quick Reference
## Domain: webtest.smknj.sch.id

---

## ✅ PRE-DEPLOYMENT (Di Lokal)

### 1. File yang Harus Ada
- [ ] `.env` (copy dari `.env.example`)
- [ ] `requirements.txt`
- [ ] `passenger_wsgi.py`
- [ ] `.htaccess`
- [ ] `manage.py`
- [ ] `README.md`
- [ ] `DEPLOYMENT.md`

### 2. Konfigurasi `.env`
```env
DEBUG=False
SECRET_KEY=<generate-django-secret-key>
ALLOWED_HOSTS=webtest.smknj.sch.id,www.webtest.smknj.sch.id

DB_NAME=usernamecpanel_web_smknj_db
DB_USER=usernamecpanel_dbuser
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=3306
```

### 3. Generate Secret Key
```bash
python -c "from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())"
```

### 4. Run Pre-Deploy Check
**Windows:**
```bash
pre_deploy_check.bat
```

**Linux/Mac:**
```bash
bash pre_deploy_check.sh
```

### 5. Collect Static Files
```bash
python manage.py collectstatic --noinput
```

### 6. Test Lokal
```bash
python manage.py runserver
```

---

## 📤 UPLOAD KE HOSTING

### 1. Upload Files
- Upload SEMUA file ke `/public_html/webtest/`
- Kecuali: `env/`, `__pycache__/`, `.git/`, `*.pyc`

### 2. Metode Upload
- **File Manager**: Upload ZIP → Extract
- **FTP**: Upload langsung
- **Git**: `git clone` (jika tersedia)

---

## 🗄️ SETUP DATABASE (cPanel)

### 1. Buat Database
- Buka **MySQL® Databases**
- Database: `web_smknj_db`

### 2. Buat User
- Username: `dbuser`
- Password: Generate strong password
- Add user ke database dengan **ALL PRIVILEGES**

### 3. Update `.env`
```env
DB_NAME=usernamecpanel_web_smknj_db
DB_USER=usernamecpanel_dbuser
DB_PASSWORD=actual_password
```

---

## 🐍 SETUP PYTHON (cPanel)

### 1. Setup Python App
- Buka **Setup Python App**
- Create Application:
  - Python version: 3.8-3.11
  - App Type: Passenger
  - App root: `webtest`
  - App domain: `webtest.smknj.sch.id`
  - App startup file: `passenger_wsgi.py`

### 2. Install Dependencies
```bash
cd /home/usernamecpanel/public_html/webtest
source env/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```

### 3. Restart App
- Klik **Restart** di Setup Python App

---

## 🚀 FINAL SETUP

### 1. Migrasi Database
```bash
source env/bin/activate
cd /home/usernamecpanel/public_html/webtest
python manage.py migrate
```

### 2. Collect Static (jika belum)
```bash
python manage.py collectstatic --noinput
```

### 3. Buat Superuser
```bash
python manage.py createsuperuser
```

---

## 🧪 TESTING

### 1. Test Homepage
```
https://webtest.smknj.sch.id/
```

### 2. Test Admin
```
https://webtest.smknj.sch.id/admin/
```

### 3. Test Upload
- Login admin
- Upload gambar berita
- Cek file tersimpan di `media/`

---

## 🔧 TROUBLESHOOTING

### Error 500
```bash
tail -f /home/usernamecpanel/tmp/passenger.log
```

### Database Error
```bash
mysql -u usernamecpanel_dbuser -p usernamecpanel_web_smknj_db
```

### Static 404
```bash
python manage.py collectstatic --noinput
```

---

## 📞 EMERGENCY CONTACT

- **IT Support**: it@smknuruljadid.sch.id
- **Django Docs**: https://docs.djangoproject.com/
- **cPanel Docs**: https://docs.cpanel.net/

---

## 📋 POST-DEPLOYMENT

- [ ] Website accessible
- [ ] Admin panel works
- [ ] Database connected
- [ ] Static files load
- [ ] Media upload works
- [ ] SSL/HTTPS active
- [ ] Backup configured
- [ ] Logs monitored

---

© 2026 SMK Nurul Jadid - IT Department
