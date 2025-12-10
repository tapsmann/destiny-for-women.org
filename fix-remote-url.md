# Fix Remote URL - Quick Guide

Your repository is named `destiny-for-women.org` but Git is trying to push to `destiny-for-women`.

## Quick Fix Commands

Run these commands in PowerShell or Git Bash:

```powershell
# Remove the incorrect remote
git remote remove origin

# Add the correct remote URL
git remote add origin https://github.com/Tapsmann/destiny-for-women.org.git

# Verify it's correct
git remote -v

# Now try pushing again
git push -u origin main
```

## Alternative: Update Existing Remote

If you prefer to update instead of remove/add:

```powershell
# Update the remote URL
git remote set-url origin https://github.com/Tapsmann/destiny-for-women.org.git

# Verify
git remote -v

# Push
git push -u origin main
```

After fixing the URL, your push should work!

