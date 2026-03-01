#!/bin/bash
# ==========================================
# Pre-Deployment Checklist Script
# Project: web-smknj-2026
# Domain: webtest.smknj.sch.id
# ==========================================

echo "=========================================="
echo "  PRE-DEPLOYMENT CHECKLIST"
echo "  SMK Nurul Jadid Web Portal 2026"
echo "=========================================="
echo ""

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Counter
PASS=0
FAIL=0
WARN=0

# Function to check file exists
check_file() {
    if [ -f "$1" ]; then
        echo -e "${GREEN}✓${NC} File exists: $1"
        ((PASS++))
    else
        echo -e "${RED}✗${NC} File missing: $1"
        ((FAIL++))
    fi
}

# Function to check directory exists
check_dir() {
    if [ -d "$1" ]; then
        echo -e "${GREEN}✓${NC} Directory exists: $1"
        ((PASS++))
    else
        echo -e "${RED}✗${NC} Directory missing: $1"
        ((FAIL++))
    fi
}

echo "1. Checking Required Files..."
echo "-------------------------------------------"
check_file ".env"
check_file ".env.example"
check_file "requirements.txt"
check_file "manage.py"
check_file "passenger_wsgi.py"
check_file ".htaccess"
check_file "README.md"
check_file "DEPLOYMENT.md"
echo ""

echo "2. Checking Django Project Structure..."
echo "-------------------------------------------"
check_dir "web_smknj"
check_dir "otak_aplikasi"
check_dir "templates"
check_dir "static"
check_dir "media"
echo ""

echo "3. Checking Core Files..."
echo "-------------------------------------------"
check_file "web_smknj/settings.py"
check_file "web_smknj/urls.py"
check_file "web_smknj/wsgi.py"
check_file "otak_aplikasi/admin.py"
check_file "otak_aplikasi/models.py"
check_file "otak_aplikasi/views.py"
echo ""

echo "4. Checking .env Configuration..."
echo "-------------------------------------------"
if [ -f ".env" ]; then
    if grep -q "DEBUG=False" .env; then
        echo -e "${GREEN}✓${NC} DEBUG is set to False (production ready)"
        ((PASS++))
    else
        echo -e "${YELLOW}⚠${NC} DEBUG should be False for production"
        ((WARN++))
    fi
    
    if grep -q "SECRET_KEY=" .env; then
        echo -e "${GREEN}✓${NC} SECRET_KEY is configured"
        ((PASS++))
    else
        echo -e "${RED}✗${NC} SECRET_KEY is missing"
        ((FAIL++))
    fi
    
    if grep -q "ALLOWED_HOSTS=.*webtest.smknj.sch.id" .env; then
        echo -e "${GREEN}✓${NC} ALLOWED_HOSTS includes production domain"
        ((PASS++))
    else
        echo -e "${YELLOW}⚠${NC} ALLOWED_HOSTS should include webtest.smknj.sch.id"
        ((WARN++))
    fi
else
    echo -e "${RED}✗${NC} .env file not found. Copy from .env.example"
    ((FAIL++))
fi
echo ""

echo "5. Checking Python Environment..."
echo "-------------------------------------------"
if command -v python &> /dev/null; then
    PYTHON_VERSION=$(python --version 2>&1)
    echo -e "${GREEN}✓${NC} Python installed: $PYTHON_VERSION"
    ((PASS++))
else
    echo -e "${RED}✗${NC} Python not found"
    ((FAIL++))
fi

if [ -d "env" ] || [ -d "venv" ] || [ -d ".venv" ]; then
    echo -e "${GREEN}✓${NC} Virtual environment exists"
    ((PASS++))
else
    echo -e "${YELLOW}⚠${NC} Virtual environment not found (will be created on hosting)"
    ((WARN++))
fi
echo ""

echo "6. Running Django Checks..."
echo "-------------------------------------------"
if [ -f "env/bin/activate" ] || [ -f "env/Scripts/activate" ]; then
    # Activate venv and run checks
    if [ -f "env/bin/activate" ]; then
        source env/bin/activate
    else
        source env/Scripts/activate
    fi
    
    python manage.py check --quiet 2>/dev/null
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✓${NC} Django system check passed"
        ((PASS++))
    else
        echo -e "${YELLOW}⚠${NC} Django system check has warnings"
        ((WARN++))
    fi
    
    deactivate 2>/dev/null
else
    echo -e "${YELLOW}⚠${NC} Skip Django check (venv not active)"
    ((WARN++))
fi
echo ""

echo "=========================================="
echo "  SUMMARY"
echo "=========================================="
echo -e "${GREEN}Passed:  $PASS${NC}"
echo -e "${YELLOW}Warnings: $WARN${NC}"
echo -e "${RED}Failed:  $FAIL${NC}"
echo ""

if [ $FAIL -gt 0 ]; then
    echo -e "${RED}⚠ DEPLOYMENT NOT READY!${NC}"
    echo "Please fix the failed checks above."
    exit 1
elif [ $WARN -gt 0 ]; then
    echo -e "${YELLOW}⚠ DEPLOYMENT READY WITH WARNINGS${NC}"
    echo "Review warnings before deploying."
    exit 0
else
    echo -e "${GREEN}✓ DEPLOYMENT READY!${NC}"
    echo "All checks passed. Safe to deploy."
    exit 0
fi
