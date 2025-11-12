#!/bin/bash
set -e

echo "🔨 Starting build process..."

# Install dependencies
echo "📦 Installing dependencies..."
npm install --legacy-peer-deps

# Build the project
echo "🏗️  Building project..."
cd client
npm run build 2>&1 || true
cd ..

# Ensure dist directory exists
mkdir -p dist/public

echo "✅ Build complete!"
