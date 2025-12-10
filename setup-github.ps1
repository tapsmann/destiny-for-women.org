# PowerShell Script to Set Up GitHub Repository
# Run this script after creating your GitHub repository

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "GitHub Pages Setup Script" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Git is installed
Write-Host "Checking Git installation..." -ForegroundColor Yellow
try {
    $gitVersion = git --version
    Write-Host "✓ Git is installed: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Git is not installed!" -ForegroundColor Red
    Write-Host "Please install Git from https://git-scm.com/download/win" -ForegroundColor Red
    Write-Host "Then run this script again." -ForegroundColor Red
    exit
}

Write-Host ""

# Get GitHub username
$githubUsername = Read-Host "Enter your GitHub username"
if ([string]::IsNullOrWhiteSpace($githubUsername)) {
    Write-Host "GitHub username is required!" -ForegroundColor Red
    exit
}

# Get repository name
$repoName = Read-Host "Enter your repository name (e.g., destiny-for-women)"
if ([string]::IsNullOrWhiteSpace($repoName)) {
    Write-Host "Repository name is required!" -ForegroundColor Red
    exit
}

Write-Host ""
Write-Host "Repository URL will be: https://github.com/$githubUsername/$repoName" -ForegroundColor Cyan
Write-Host ""

$confirm = Read-Host "Have you created this repository on GitHub? (yes/no)"
if ($confirm -ne "yes" -and $confirm -ne "y") {
    Write-Host ""
    Write-Host "Please create the repository on GitHub first:" -ForegroundColor Yellow
    Write-Host "1. Go to https://github.com/new" -ForegroundColor Yellow
    Write-Host "2. Repository name: $repoName" -ForegroundColor Yellow
    Write-Host "3. Make it Public" -ForegroundColor Yellow
    Write-Host "4. DO NOT initialize with README" -ForegroundColor Yellow
    Write-Host "5. Click 'Create repository'" -ForegroundColor Yellow
    Write-Host ""
    $confirm2 = Read-Host "Press Enter after creating the repository, or type 'exit' to cancel"
    if ($confirm2 -eq "exit") {
        exit
    }
}

Write-Host ""
Write-Host "Initializing Git repository..." -ForegroundColor Yellow

# Initialize Git (if not already initialized)
if (-not (Test-Path ".git")) {
    git init
    Write-Host "✓ Git repository initialized" -ForegroundColor Green
} else {
    Write-Host "✓ Git repository already initialized" -ForegroundColor Green
}

Write-Host ""
Write-Host "Adding files..." -ForegroundColor Yellow
git add .
Write-Host "✓ Files added" -ForegroundColor Green

Write-Host ""
Write-Host "Creating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit - DWYE website"
Write-Host "✓ Initial commit created" -ForegroundColor Green

Write-Host ""
Write-Host "Setting up remote..." -ForegroundColor Yellow

# Check if remote already exists
$remoteExists = git remote get-url origin 2>$null
if ($remoteExists) {
    Write-Host "Remote 'origin' already exists: $remoteExists" -ForegroundColor Yellow
    $updateRemote = Read-Host "Update remote URL? (yes/no)"
    if ($updateRemote -eq "yes" -or $updateRemote -eq "y") {
        git remote set-url origin "https://github.com/$githubUsername/$repoName.git"
        Write-Host "✓ Remote URL updated" -ForegroundColor Green
    }
} else {
    git remote add origin "https://github.com/$githubUsername/$repoName.git"
    Write-Host "✓ Remote added" -ForegroundColor Green
}

Write-Host ""
Write-Host "Setting branch to 'main'..." -ForegroundColor Yellow
git branch -M main
Write-Host "✓ Branch set to 'main'" -ForegroundColor Green

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Ready to push to GitHub!" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Run: git push -u origin main" -ForegroundColor White
Write-Host "2. When prompted:" -ForegroundColor White
Write-Host "   - Username: $githubUsername" -ForegroundColor White
Write-Host "   - Password: Use your Personal Access Token (not your GitHub password)" -ForegroundColor White
Write-Host ""
Write-Host "To create a Personal Access Token:" -ForegroundColor Yellow
Write-Host "1. Go to: https://github.com/settings/tokens" -ForegroundColor White
Write-Host "2. Click 'Generate new token (classic)'" -ForegroundColor White
Write-Host "3. Select 'repo' scope" -ForegroundColor White
Write-Host "4. Copy the token and use it as your password" -ForegroundColor White
Write-Host ""
Write-Host "After pushing, enable GitHub Pages:" -ForegroundColor Yellow
Write-Host "1. Go to: https://github.com/$githubUsername/$repoName/settings/pages" -ForegroundColor White
Write-Host "2. Source: Deploy from a branch" -ForegroundColor White
Write-Host "3. Branch: main, Folder: / (root)" -ForegroundColor White
Write-Host "4. Your site will be at: https://$githubUsername.github.io/$repoName/" -ForegroundColor Green
Write-Host ""

