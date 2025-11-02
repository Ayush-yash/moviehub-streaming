#!/bin/bash

# MovieHub Deployment Script
echo "🎬 Starting MovieHub deployment..."

# Clean previous build
echo "🧹 Cleaning previous build..."
rm -rf dist

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Build the project
echo "🔨 Building project..."
npm run build

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    echo "🚀 Ready for deployment!"
    
    # Optional: Deploy to Vercel
    if command -v vercel &> /dev/null; then
        echo "🌐 Deploying to Vercel..."
        vercel --prod
    else
        echo "💡 Install Vercel CLI to deploy: npm i -g vercel"
    fi
else
    echo "❌ Build failed!"
    exit 1
fi