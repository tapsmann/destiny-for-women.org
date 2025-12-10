# Step-by-Step Guide: Hosting Your Website on GitHub Pages

This guide will walk you through hosting your DWYE Empowerment Trust website on GitHub Pages for free!

## Prerequisites

- A GitHub account (create one at [github.com](https://github.com) if you don't have one)
- Git installed on your computer (we'll guide you through this)

---

## Step 1: Install Git (if not already installed)

### Check if Git is installed:
1. Open PowerShell or Command Prompt
2. Type: `git --version`
3. If you see a version number, Git is installed! Skip to Step 2.
4. If you see an error, continue below.

### Install Git:
1. Go to [https://git-scm.com/download/win](https://git-scm.com/download/win)
2. Download the Windows installer
3. Run the installer:
   - Click "Next" through the installation wizard
   - Use default settings (they're fine for most users)
   - Click "Install"
4. After installation, **restart your terminal/PowerShell**
5. Verify installation by typing: `git --version`

---

## Step 2: Configure Git (First Time Only)

Open PowerShell or Command Prompt and run these commands (replace with your information):

```powershell
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

Example:
```powershell
git config --global user.name "Tapsmann"
git config --global user.email "cbddestiny@gmail.com"
```

---

## Step 3: Create a GitHub Repository

1. **Go to GitHub**: Open [https://github.com](https://github.com) and sign in
2. **Create New Repository**:
   - Click the **"+"** icon in the top right corner
   - Select **"New repository"**
3. **Repository Settings**:
   - **Repository name**: `destiny-for-women` (or any name you prefer)
   - **Description**: "Website for DWYE Empowerment Trust"
   - **Visibility**: Choose **Public** (required for free GitHub Pages)
   - **DO NOT** check "Initialize with README" (we already have files)
   - **DO NOT** add .gitignore or license
4. Click **"Create repository"**

---

## Step 4: Initialize Git in Your Project Folder

Open PowerShell or Command Prompt and navigate to your project folder:

```powershell
cd "C:\Users\Tapsmann\Downloads\Destiny-for-women"
```

Then run these commands one by one:

### 4.1 Initialize Git Repository
```powershell
git init
```

### 4.2 Add All Files
```powershell
git add .
```

### 4.3 Create First Commit
```powershell
git commit -m "Initial commit - DWYE website"
```

---

## Step 5: Connect to GitHub and Push Files

### 5.1 Add GitHub Remote
Replace `YOUR_USERNAME` with your actual GitHub username:

```powershell
git remote add origin https://github.com/YOUR_USERNAME/destiny-for-women.git
```

**Example** (if your username is "tapsmann"):
```powershell
git remote add origin https://github.com/tapsmann/destiny-for-women.git
```

### 5.2 Rename Main Branch (if needed)
```powershell
git branch -M main
```

### 5.3 Push Files to GitHub
```powershell
git push -u origin main
```

**Note**: You'll be prompted for your GitHub username and password. 
- **Username**: Your GitHub username
- **Password**: Use a **Personal Access Token** (not your GitHub password - see Step 5.4 below)

---

## Step 6: Create Personal Access Token (for authentication)

GitHub requires a Personal Access Token instead of passwords:

1. Go to GitHub → Click your profile picture (top right) → **Settings**
2. Scroll down → Click **"Developer settings"** (left sidebar)
3. Click **"Personal access tokens"** → **"Tokens (classic)"**
4. Click **"Generate new token"** → **"Generate new token (classic)"**
5. **Settings**:
   - **Note**: "Website hosting token"
   - **Expiration**: Choose 90 days or No expiration
   - **Scopes**: Check **`repo`** (this selects all repo permissions)
6. Click **"Generate token"**
7. **COPY THE TOKEN IMMEDIATELY** (you won't see it again!)
8. Use this token as your password when pushing to GitHub

---

## Step 7: Enable GitHub Pages

1. **Go to your repository** on GitHub
2. Click **"Settings"** tab (top menu)
3. Scroll down to **"Pages"** section (left sidebar)
4. Under **"Source"**:
   - Select **"Deploy from a branch"**
   - **Branch**: Select `main`
   - **Folder**: Select `/ (root)`
5. Click **"Save"**
6. Wait 1-2 minutes for GitHub to build your site

---

## Step 8: Access Your Live Website

After enabling GitHub Pages:

1. GitHub will show your site URL (usually takes 1-2 minutes)
2. Your website URL will be:
   ```
   https://YOUR_USERNAME.github.io/destiny-for-women/
   ```
   Replace `YOUR_USERNAME` with your actual GitHub username

3. **Example**: If your username is "tapsmann":
   ```
   https://tapsmann.github.io/destiny-for-women/
   ```

---

## Step 9: Making Updates to Your Website

Whenever you make changes to your website files:

1. **Open PowerShell** in your project folder:
   ```powershell
   cd "C:\Users\Tapsmann\Downloads\Destiny-for-women"
   ```

2. **Add changes**:
   ```powershell
   git add .
   ```

3. **Commit changes**:
   ```powershell
   git commit -m "Description of your changes"
   ```
   Example: `git commit -m "Updated contact information"`

4. **Push to GitHub**:
   ```powershell
   git push
   ```

5. **Wait 1-2 minutes** - GitHub Pages will automatically update your live site!

---

## Troubleshooting

### Issue: "git: command not found"
- **Solution**: Git is not installed. Go back to Step 1 and install Git.

### Issue: "Authentication failed" when pushing
- **Solution**: Make sure you're using a Personal Access Token (not your GitHub password). See Step 6.

### Issue: "Repository not found"
- **Solution**: Check that:
  1. The repository name matches exactly
  2. You've created the repository on GitHub first
  3. Your username is correct in the remote URL

### Issue: Website shows 404 error
- **Solution**: 
  1. Make sure `index.html` is in the root folder
  2. Wait 5-10 minutes after enabling Pages (first deployment takes longer)
  3. Check Settings → Pages to ensure it's enabled

### Issue: Changes not showing on live site
- **Solution**: 
  1. Wait 2-3 minutes (GitHub needs time to rebuild)
  2. Hard refresh your browser (Ctrl+F5)
  3. Clear browser cache

---

## Quick Reference Commands

```powershell
# Navigate to project folder
cd "C:\Users\Tapsmann\Downloads\Destiny-for-women"

# Check status
git status

# Add all changes
git add .

# Commit changes
git commit -m "Your message here"

# Push to GitHub
git push

# View remote URL
git remote -v
```

---

## Custom Domain (Optional - Advanced)

If you want to use your own domain (e.g., www.destiny.org.zw):

1. In GitHub repository → Settings → Pages
2. Under "Custom domain", enter your domain
3. Follow GitHub's DNS configuration instructions
4. Update your domain's DNS records as instructed

---

## Need Help?

- **GitHub Docs**: [docs.github.com/pages](https://docs.github.com/pages)
- **Git Tutorial**: [git-scm.com/docs](https://git-scm.com/docs)
- **GitHub Support**: [support.github.com](https://support.github.com)

---

**Congratulations!** Your website is now live on GitHub Pages! 🎉

