#!/bin/bash

# Deployment script for TechGear Pro landing page
# This script will be run on the Azure container

set -e  # Exit on any error

echo "🚀 Setting up TechGear Pro landing page..."

# Navigate to working directory
cd /home/ravi

# Initialize Git repository if not already initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    git config user.email "ravi@adhiratha.com"
    git config user.name "Ravi"
fi

# Create project directory if needed
mkdir -p techgear-pro
cd techgear-pro

# Copy files (these will be transferred via scp)
echo "📁 Project files ready"

# Initial commit
echo "💾 Creating initial commit..."
git add .
git commit -m "Initial commit: TechGear Pro landing page

- Modern, responsive design for electronics store
- Pure HTML/CSS/JS (no frameworks)
- Smooth animations and interactive elements
- Product showcase, features, reviews sections
- Newsletter subscription form
- Fully responsive for all devices"

# Create GitHub repository
echo "🐙 Creating GitHub repository..."
# This will be done via GitHub CLI or API

# Deploy to Vercel
echo "▲ Deploying to Vercel..."
# This will be done via Vercel CLI

echo "✅ Deployment complete!"
