#!/bin/bash
set -e

echo "🚀 Starting custom setup..."

# Install Claude Code
echo "📦 Installing Claude Code..."
curl -fsSL https://claude.ai/install.sh | bash

## Install Google Gemini CLI
echo "📦 Installing Gemini CLI..."
npm install -g @google/gemini-cli

# Install other npm packages
echo "📦 Installing npm packages..."
npm install -g typescript ts-node

echo "✅ Setup complete!"
