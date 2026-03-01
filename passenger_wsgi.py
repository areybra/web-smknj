"""
WSGI Configuration for cPanel/Passenger
========================================
File ini diperlukan untuk menjalankan aplikasi Django di cPanel dengan Passenger.
Pastikan untuk menyesuaikan path dengan struktur folder di hosting Anda.
"""

import os
import sys
import site

# ==========================================
# KONFIGURASI PATH - SESUAIKAN DENGAN STRUKTUR FOLDER ANDA
# ==========================================
# Ganti 'usernamecpanel' dengan username cPanel Anda
USERNAME = 'usernamecpanel'

# Path ke project directory di cPanel
# Contoh: /home/usernamecpanel/public_html/webtest/
PROJECT_ROOT = os.path.join('/home', USERNAME, 'public_html', 'webtest')

# Path ke virtual environment
# Contoh: /home/usernamecpanel/webtest/env/
VIRTUALENV = os.path.join(PROJECT_ROOT, 'env')

# ==========================================
# JANGAN UBAH KODE DI BAWAH INI
# ==========================================

# Tambahkan project root ke sys.path
if PROJECT_ROOT not in sys.path:
    sys.path.insert(0, PROJECT_ROOT)

# Aktifkan virtual environment
if os.path.exists(VIRTUALENV):
    # Tambahkan site-packages virtualenv ke sys.path
    site.addsitedir(os.path.join(VIRTUALENV, 'lib', 'python3.' + str(sys.version_info.minor), 'site-packages'))

# Set environment variables
os.environ['DJANGO_SETTINGS_MODULE'] = 'web_smknj.settings'
os.environ['PYTHONHOME'] = VIRTUALENV

# Import aplikasi WSGI Django
from django.core.wsgi import get_wsgi_application

application = get_wsgi_application()
