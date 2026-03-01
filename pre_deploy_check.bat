@echo off
REM ==========================================
REM Pre-Deployment Checklist Script (Windows)
REM Project: web-smknj-2026
REM Domain: webtest.smknj.sch.id
REM ==========================================

echo ==========================================
echo   PRE-DEPLOYMENT CHECKLIST
echo   SMK Nurul Jadid Web Portal 2026
echo ==========================================
echo.

REM Counter
set /a PASS=0
set /a FAIL=0
set /a WARN=0

REM Check file exists
:check_file
if exist "%~1" (
    echo [OK] File exists: %~1
    set /a PASS+=1
) else (
    echo [FAIL] File missing: %~1
    set /a FAIL+=1
)
goto :eof

REM Check directory exists
:check_dir
if exist "%~1\" (
    echo [OK] Directory exists: %~1
    set /a PASS+=1
) else (
    echo [FAIL] Directory missing: %~1
    set /a FAIL+=1
)
goto :eof

echo 1. Checking Required Files...
echo -------------------------------------------
call :check_file ".env"
call :check_file ".env.example"
call :check_file "requirements.txt"
call :check_file "manage.py"
call :check_file "passenger_wsgi.py"
call :check_file ".htaccess"
call :check_file "README.md"
call :check_file "DEPLOYMENT.md"
echo.

echo 2. Checking Django Project Structure...
echo -------------------------------------------
call :check_dir "web_smknj"
call :check_dir "otak_aplikasi"
call :check_dir "templates"
call :check_dir "static"
call :check_dir "media"
echo.

echo 3. Checking Core Files...
echo -------------------------------------------
call :check_file "web_smknj\settings.py"
call :check_file "web_smknj\urls.py"
call :check_file "web_smknj\wsgi.py"
call :check_file "otak_aplikasi\admin.py"
call :check_file "otak_aplikasi\models.py"
call :check_file "otak_aplikasi\views.py"
echo.

echo 4. Checking .env Configuration...
echo -------------------------------------------
if exist ".env" (
    findstr /C:"DEBUG=False" .env >nul
    if %errorlevel% equ 0 (
        echo [OK] DEBUG is set to False (production ready)
        set /a PASS+=1
    ) else (
        echo [WARN] DEBUG should be False for production
        set /a WARN+=1
    )
    
    findstr /C:"SECRET_KEY=" .env >nul
    if %errorlevel% equ 0 (
        echo [OK] SECRET_KEY is configured
        set /a PASS+=1
    ) else (
        echo [FAIL] SECRET_KEY is missing
        set /a FAIL+=1
    )
    
    findstr /C:"webtest.smknj.sch.id" .env >nul
    if %errorlevel% equ 0 (
        echo [OK] ALLOWED_HOSTS includes production domain
        set /a PASS+=1
    ) else (
        echo [WARN] ALLOWED_HOSTS should include webtest.smknj.sch.id
        set /a WARN+=1
    )
) else (
    echo [FAIL] .env file not found. Copy from .env.example
    set /a FAIL+=1
)
echo.

echo 5. Checking Python Environment...
echo -------------------------------------------
python --version >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('python --version 2^>^&1') do set PYTHON_VERSION=%%i
    echo [OK] Python installed: %PYTHON_VERSION%
    set /a PASS+=1
) else (
    echo [FAIL] Python not found
    set /a FAIL+=1
)

if exist "env\" (
    echo [OK] Virtual environment exists
    set /a PASS+=1
) else (
    echo [WARN] Virtual environment not found (will be created on hosting)
    set /a WARN+=1
)
echo.

echo 6. Running Django Checks...
echo -------------------------------------------
if exist "env\Scripts\activate" (
    echo Running Django system check...
    call env\Scripts\activate
    python manage.py check --quiet 2>nul
    if %errorlevel% equ 0 (
        echo [OK] Django system check passed
        set /a PASS+=1
    ) else (
        echo [WARN] Django system check has warnings
        set /a WARN+=1
    )
    deactivate
) else (
    echo [WARN] Skip Django check (venv not active)
    set /a WARN+=1
)
echo.

echo ==========================================
echo   SUMMARY
echo ==========================================
echo Passed:  %PASS%
echo Warnings: %WARN%
echo Failed:  %FAIL%
echo.

if %FAIL% gtr 0 (
    echo [!] DEPLOYMENT NOT READY!
    echo Please fix the failed checks above.
    exit /b 1
) else if %WARN% gtr 0 (
    echo [!] DEPLOYMENT READY WITH WARNINGS
    echo Review warnings before deploying.
    exit /b 0
) else (
    echo [OK] DEPLOYMENT READY!
    echo All checks passed. Safe to deploy.
    exit /b 0
)
