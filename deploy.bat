@echo off
echo 🎬 Starting MovieHub deployment...

echo 🧹 Cleaning previous build...
if exist dist rmdir /s /q dist

echo 📦 Installing dependencies...
npm install

echo 🔨 Building project...
npm run build

if %errorlevel% equ 0 (
    echo ✅ Build successful!
    echo 🚀 Ready for deployment!
    
    where vercel >nul 2>nul
    if %errorlevel% equ 0 (
        echo 🌐 Deploying to Vercel...
        vercel --prod
    ) else (
        echo 💡 Install Vercel CLI to deploy: npm i -g vercel
    )
) else (
    echo ❌ Build failed!
    exit /b 1
)