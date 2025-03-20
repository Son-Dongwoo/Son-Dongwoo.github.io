#!/bin/bash
# ============================================
# Initial Setup for Hugo gh-pages (Linux/Mac)
# Execute only once after cloning repository
# ============================================

# Navigate into public directory
cd public

# Initialize git repository in public folder
git init

# Create and checkout gh-pages branch
git checkout -b gh-pages

# Add remote repository (Replace URL with your own GitHub repository)
git remote add origin https://github.com/Son-Dongwoo/Son-Dongwoo.github.io.git

# Stage, commit, and push initial content
git add .
git commit -m "Initial commit to gh-pages branch"
git push -u origin gh-pages --force

echo ""
echo "============================================"
echo "Hugo gh-pages setup completed successfully!"
echo "============================================"
