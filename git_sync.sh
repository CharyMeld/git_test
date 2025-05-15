#!/bin/bash

# Check if a commit message is provided
if [ -z "$1" ]; then
    echo "❗ Usage: ./git_sync.sh \"Your commit message\""
    exit 1
fi

# Pull latest changes first
echo "🔄 Pulling latest changes..."
git pull origin main

# Add all changes
echo "➕ Adding changes..."
git add .

# Commit with provided message
echo "📝 Committing changes..."
git commit -m "$1"

# Push to remote
echo "🚀 Pushing to remote..."
git push origin main

echo "✅ Sync complete!"
