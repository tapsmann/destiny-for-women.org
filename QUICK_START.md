# Quick Start Checklist - GitHub Hosting

Follow these steps in order:

## ✅ Pre-Setup Checklist

- [ ] GitHub account created at [github.com](https://github.com)
- [ ] Git installed on your computer
- [ ] You're in the project folder: `C:\Users\Tapsmann\Downloads\Destiny-for-women`

---

## 🚀 Setup Steps

### Step 1: Create GitHub Repository
- [ ] Go to [github.com/new](https://github.com/new)
- [ ] Repository name: `destiny-for-women`
- [ ] Make it **Public**
- [ ] **Don't** check "Initialize with README"
- [ ] Click "Create repository"

### Step 2: Run Setup Script (Easiest Method)
- [ ] Open PowerShell in project folder
- [ ] Run: `.\setup-github.ps1`
- [ ] Follow the prompts
- [ ] Enter your GitHub username when asked

### Step 3: Push to GitHub
- [ ] Run: `git push -u origin main`
- [ ] Username: Your GitHub username
- [ ] Password: Use Personal Access Token (see below)

### Step 4: Create Personal Access Token
- [ ] Go to [github.com/settings/tokens](https://github.com/settings/tokens)
- [ ] Click "Generate new token (classic)"
- [ ] Check `repo` scope
- [ ] Generate and **COPY THE TOKEN**
- [ ] Use this token as your password when pushing

### Step 5: Enable GitHub Pages
- [ ] Go to your repository on GitHub
- [ ] Click **Settings** tab
- [ ] Click **Pages** (left sidebar)
- [ ] Source: **Deploy from a branch**
- [ ] Branch: **main**, Folder: **/ (root)**
- [ ] Click **Save**

### Step 6: Access Your Site
- [ ] Wait 1-2 minutes
- [ ] Visit: `https://YOUR_USERNAME.github.io/destiny-for-women/`
- [ ] Your website is live! 🎉

---

## 📝 Manual Commands (Alternative to Script)

If you prefer to run commands manually:

```powershell
# Navigate to project
cd "C:\Users\Tapsmann\Downloads\Destiny-for-women"

# Initialize Git
git init

# Add files
git add .

# Commit
git commit -m "Initial commit - DWYE website"

# Add remote (replace YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/destiny-for-women.git

# Set branch
git branch -M main

# Push to GitHub
git push -u origin main
```

---

## 🔄 Updating Your Website

After making changes to files:

```powershell
git add .
git commit -m "Description of changes"
git push
```

Wait 1-2 minutes for GitHub Pages to update!

---

## ❓ Need Help?

📖 Full detailed guide: [GITHUB_HOSTING_GUIDE.md](GITHUB_HOSTING_GUIDE.md)

