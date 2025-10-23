#!/bin/bash
set -e

echo "🔧 Installing Node.js..."
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "📦 Installing npm dependencies..."
cd /workspaces/mslearn-tailspin-spacegame-web
npm install

echo "🛠️ Fixing dotnet path..."
export PATH=$PATH:/usr/local/dotnet

echo "✅ Environment setup complete."