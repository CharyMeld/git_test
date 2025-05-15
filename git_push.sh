#!/bin/bash

# Check if commit message is provided
if [ -z "$1" ]; then
    echo "Usage: ./git_push.sh \"Your commit message\""
    exit 1
fi

# Show current git status
git status

# Stage all changes
git add .

# Commit with provided message
git commit -m "$1"

# Push to main branch
git push origin main

# Done!
echo "✅ Changes pushed to 'main' branch."

