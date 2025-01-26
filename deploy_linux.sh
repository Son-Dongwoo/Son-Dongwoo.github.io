#!/bin/bash

# ========================
# Deploy Hugo site script
# ========================

# Build the project with the specified theme
hugo -t PaperMod

# Navigate to the public directory
cd public || exit

# Add changes to git in the public folder
git add .

# Ask for commit message for the gh-pages branch
echo "Enter commit message for gh-pages branch (Press ENTER for default message):"
read msg_public
if [ -z "$msg_public" ]; then
  msg_public="Rebuilding site on $(date)"
fi
git commit -m "$msg_public"

# Push changes to the gh-pages branch
git push origin gh-pages

# Return to the project root directory
cd .. || exit

# Add changes in the root directory
git add .

# Ask for commit message for the main branch
echo "Enter commit message for main branch (Press ENTER for default message):"
read msg_main
if [ -z "$msg_main" ]; then
  msg_main="Rebuilding site on $(date)"
fi
git commit -m "$msg_main"

# Push changes to the main branch
git push origin main
