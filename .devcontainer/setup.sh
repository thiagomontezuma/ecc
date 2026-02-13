#!/bin/bash
set -e

echo "🚀 Starting custom setup..."

# Install Claude Code
echo "📦 Installing Claude Code..."
npm install -g claude-code

## Install Google Gemini CLI
echo "📦 Installing Gemini CLI..."
npm install -g @google/gemini-cli

# Install other npm packages
echo "📦 Installing npm packages..."
npm install -g typescript ts-node

# Install Python packages if requirements.txt exists
if [ -f requirements.txt ]; then
    echo "🐍 Installing Python packages..."
    pip install -r requirements.txt
fi

echo "✅ Setup complete!"