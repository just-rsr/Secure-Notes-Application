@echo off
echo 🚀 Setting up Secure Notes Application...

REM Check if Java is installed
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Java is not installed. Please install Java 21 or higher.
    pause
    exit /b 1
)

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed. Please install Node.js 18 or higher.
    pause
    exit /b 1
)

echo ✅ Prerequisites check passed!

REM Setup backend
echo 📦 Setting up backend...
cd notes

REM Copy configuration template
if not exist "src\main\resources\application.properties" (
    copy "src\main\resources\application.properties.template" "src\main\resources\application.properties"
    echo 📝 Created application.properties from template
    echo ⚠️  Please update the configuration in notes\src\main\resources\application.properties
)

REM Build backend
echo 🔨 Building backend...
call mvnw.cmd clean install

cd ..

REM Setup frontend
echo 📦 Setting up frontend...
cd secure-notes-react

REM Install dependencies
echo 📥 Installing frontend dependencies...
call npm install

cd ..

echo ✅ Setup complete!
echo.
echo 🎯 Next steps:
echo 1. Update configuration in notes\src\main\resources\application.properties
echo 2. Start backend: cd notes ^&^& mvnw.cmd spring-boot:run
echo 3. Start frontend: cd secure-notes-react ^&^& npm start
echo.
echo 🌐 Access the application at http://localhost:3000
pause