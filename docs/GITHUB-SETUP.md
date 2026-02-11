# GitHub Setup & Publishing Guide

Hướng dẫn chi tiết để publish BA Skills lên GitHub để team có thể dùng.

---

## 🎯 Mục Tiêu

Sau hướng dẫn này, bạn sẽ có:
- ✅ GitHub repository cho ba-skills
- ✅ Skills có thể install bằng git clone
- ✅ Documentation hoàn chỉnh
- ✅ CI/CD pipeline (optional)
- ✅ Team collaboration setup

---

## 📋 Yêu Cầu

- GitHub account (free hoặc paid)
- Git installed locally (`git --version`)
- ba-skills folder đã được setup (đã tạo git repo locally)

---

## Step-by-Step: Publish to GitHub

### Step 1: Create GitHub Repository

**Option A: Using GitHub Web UI (Recommended)**

1. Go to https://github.com/new
2. Fill in:
   - **Repository name**: `ba-skills`
   - **Description**: "Professional Business Analyst Skills for Claude Code"
   - **Public** (so team can access)
   - **Add README**: NO (we have one already)
   - **Add .gitignore**: NO (we have one already)
   - **Add License**: NO (we have MIT license)

3. Click "Create repository"
4. Copy the repository URL (will be shown on next page)
   - Format: `https://github.com/YOUR-USERNAME/ba-skills.git`

**Option B: Using GitHub CLI**

```bash
# Install GitHub CLI first: https://cli.github.com/
gh repo create ba-skills \
  --description "Professional Business Analyst Skills for Claude Code" \
  --public \
  --source=. \
  --remote=origin \
  --push
```

### Step 2: Add Remote Repository

In your ba-skills folder:

```bash
cd /Users/giang.tran/Documents/Skills_BA

# Add the remote (replace with your URL)
git remote add origin https://github.com/YOUR-USERNAME/ba-skills.git

# Verify it's added
git remote -v
```

Expected output:
```
origin  https://github.com/YOUR-USERNAME/ba-skills.git (fetch)
origin  https://github.com/YOUR-USERNAME/ba-skills.git (push)
```

### Step 3: Push to GitHub

```bash
# First push with upstream tracking
git push -u origin main

# Or if your default branch is "master"
git push -u origin master

# Verify
git log --oneline
# You should see your commits
```

Expected output:
```
 * 6d2840e Initial commit: BA Skills v1.0 - 5 professional skills with documentation
```

### Step 4: Verify on GitHub

1. Go to https://github.com/YOUR-USERNAME/ba-skills
2. You should see:
   - ✅ README.md displayed
   - ✅ All files in repository
   - ✅ Skills folder with 5 skills
   - ✅ Proper commit history

---

## 🔒 GitHub Configuration

### Configure Repository Settings

Go to your repo → Settings:

**1. General Settings**
- ✅ Default branch: `main`
- ✅ Template repository: Keep unchecked
- ✅ Private: Unchecked (public for team access)

**2. Danger Zone (optional)**
- Don't need to change

**3. Collaborators (Team Access)**
- Go to "Collaborators" (or "Manage access")
- Click "Add people"
- Enter team member usernames
- Set permission level:
  - **Read**: View only
  - **Triage**: Review PRs
  - **Write**: Make commits (recommended for team)
  - **Admin**: Full access

### Setup Branch Protection (Optional)

For team collaboration:

1. Go to Settings → Branches
2. Add rule for `main`:
   - ✅ Require pull request reviews (1 person)
   - ✅ Require status checks to pass
   - ✅ Dismiss stale reviews

---

## 👥 Team Access Setup

### Method 1: Organization (Recommended for Teams)

```bash
# Create GitHub Organization (if team size > 5)
# https://github.com/organizations/new

# Add ba-skills repo to org:
# 1. Create repo in organization
# 2. Or transfer existing repo to org
```

**Steps to transfer:**
1. Go to Settings → Danger Zone → Transfer ownership
2. Type organization name
3. Click Transfer
4. Complete in organization account

### Method 2: Individual Repository Sharing

Simply add collaborators:

```bash
# Via GitHub web UI:
# Settings → Collaborators → Add people

# Give team member access to clone and use
```

### Method 3: Read-Only Access (Public)

Since it's public, anyone can:
```bash
git clone https://github.com/YOUR-USERNAME/ba-skills.git
```

---

## 📥 Team Installation from GitHub

### Installation Instructions for Team

**For team members to use:**

```bash
# 1. Clone the repository
git clone https://github.com/YOUR-USERNAME/ba-skills.git
cd ba-skills

# 2. Run installation script
chmod +x install.sh
./install.sh

# 3. Verify in Claude Code
# Type "/" and see all 5 skills

# 4. Optional: Keep updated
# cd ba-skills && git pull   # Get latest updates
```

---

## 🚀 Publishing Updates

When you make improvements or add features:

```bash
# 1. Make changes
vi skills/document-review/SKILL.md

# 2. Commit
git add skills/document-review/SKILL.md
git commit -m "improve/document-review: [description]"

# 3. Push to GitHub
git push origin main

# 4. Team gets updates with:
cd ba-skills
git pull
./install.sh   # reinstall updated skills
```

---

## 🔄 Version Control Best Practices

### Branching Strategy

```
main                    # Stable, tested version
├── feature/new-skill   # New features
├── improve/skill-name  # Improvements
└── docs/update-readme  # Documentation
```

### Commit Message Format

```
[type]/[skill]: [description]

Types:
- improve: Enhance existing skill
- fix: Bug fix
- feature: Add new skill
- docs: Documentation update
- chore: Maintenance

Examples:
improve/requirement-analysis: Add template validation
fix/risk-assessment: Correct probability matrix
feature/metrics-analytics: New analytics skill
docs: Update installation guide
```

### Creating Pull Requests

For team collaboration:

```bash
# 1. Create feature branch
git checkout -b improve/document-review

# 2. Make changes
# ... edit files ...

# 3. Commit
git add .
git commit -m "improve/document-review: Add clarity checklist"

# 4. Push to GitHub
git push origin improve/document-review

# 5. Go to GitHub, click "Create Pull Request"
# Add description of changes and click "Create"

# 6. Team reviews and merges
# Delete branch after merge
```

---

## 📊 GitHub Repository Best Practices

### Good README ✅
- [ ] Clear title and description
- [ ] Quick start (3 steps)
- [ ] Feature overview
- [ ] Installation methods
- [ ] Usage examples
- [ ] Links to detailed docs
- [ ] Contributing guidelines
- [ ] License

### Good Documentation 📖
- [ ] Installation guide (docs/INSTALLATION.md)
- [ ] Usage guide (docs/USAGE.md)
- [ ] FAQ (docs/FAQ.md)
- [ ] Contributing guide (CONTRIBUTING.md)
- [ ] Examples (in skills/)

### Good Repository Structure 🗂️
```
ba-skills/
├── skills/              # Main deliverable
├── docs/                # Documentation
├── .github/             # GitHub specific (optional)
├── install.sh           # Installation script
├── README.md            # Main docs
├── CONTRIBUTING.md      # Contributing guide
├── LICENSE              # MIT License
├── .gitignore           # Git ignore rules
└── package.json         # Metadata
```

### Good .gitignore 🚫
- [ ] Excludes OS files (.DS_Store, Thumbs.db)
- [ ] Excludes IDE files (.vscode, .idea)
- [ ] Excludes sensitive files (.env, secrets)
- [ ] Excludes build artifacts (dist/, build/)
- [ ] Excludes node_modules/ (if using Node)

---

## 🔒 Security Setup

### Protect Sensitive Information

**Don't commit:**
- `.env` files with API keys
- Personal information
- Credentials or secrets
- Private company data

**If accidentally committed:**
```bash
# Remove file from git history
git filter-branch --tree-filter 'rm -f [filename]' HEAD
git push --force origin main

# Or use BFG Repo-Cleaner:
# https://rtyley.github.io/bfg-repo-cleaner/
```

### Add Secrets (If Needed)

For GitHub Actions or automation:

1. Go to Settings → Secrets
2. Add environment variables
3. Use in GitHub Actions workflows

---

## 📈 GitHub Features to Enable

### Enable Issues
- Let team report bugs
- Track feature requests
- Organize discussions

### Enable Discussions (Optional)
- Community Q&A
- Share ideas
- Show & tell

### Enable GitHub Pages (Optional)
```bash
# 1. Go to Settings → Pages
# 2. Select "main" branch and "/docs" folder
# 3. Site will be available at:
#    https://YOUR-USERNAME.github.io/ba-skills/
```

### Setup GitHub Actions (Optional CI/CD)

Create `.github/workflows/validate.yml`:

```yaml
name: Validate Skills

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  validate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Verify SKILL.md files
        run: |
          for skill in document-review requirement-analysis solution-design risk-assessment stakeholder-mapping
          do
            if [ ! -f "skills/$skill/SKILL.md" ]; then
              echo "❌ Missing: skills/$skill/SKILL.md"
              exit 1
            fi
            echo "✓ $skill"
          done
      - name: Check documentation
        run: |
          [ -f "README.md" ] && echo "✓ README.md"
          [ -f "CONTRIBUTING.md" ] && echo "✓ CONTRIBUTING.md"
          [ -f "LICENSE" ] && echo "✓ LICENSE"
```

---

## 📢 Sharing Repository with Team

### Option 1: Public Repository
```bash
# Anyone with the URL can access
https://github.com/YOUR-USERNAME/ba-skills

# Team members clone:
git clone https://github.com/YOUR-USERNAME/ba-skills.git
```

### Option 2: Private Repository (With Access)
- Same URL, but requires GitHub login
- Add team members as collaborators
- Free with GitHub Teams

### Option 3: Organization Repository
```bash
# Create org-level repository
# https://github.com/organizations/YOUR-ORG/repositories/new

# All org members can access
# Better for large teams
```

### Option 4: Documentation Site
```bash
# Enable GitHub Pages (as mentioned above)
# Share link: https://YOUR-USERNAME.github.io/ba-skills/
```

---

## 🎯 Next Steps for Team

### Day 1: Setup
1. ✅ Create GitHub repo
2. ✅ Push initial commit
3. ✅ Add team collaborators
4. ✅ Share repo link with team

### Day 2: Team Onboarding
1. Team clones repo: `git clone ...`
2. Team runs: `./install.sh`
3. Team verifies in Claude Code
4. Team reads docs and tests skills

### Day 3+: Ongoing
1. Team provides feedback
2. You make improvements
3. Push updates to GitHub
4. Team pulls latest: `git pull && ./install.sh`

---

## 📝 Checklist: Ready to Publish

- [ ] GitHub account created
- [ ] Repository created on GitHub
- [ ] Local git repo connected (`git remote -v`)
- [ ] Initial commit pushed (`git push`)
- [ ] README.md visible on GitHub
- [ ] Skills folder visible with all 5 skills
- [ ] Documentation files visible (docs/)
- [ ] License visible (LICENSE)
- [ ] install.sh present and executable
- [ ] Team members added as collaborators (if private)
- [ ] Shared repo link with team

---

## ⚡ Quick Command Reference

```bash
# Initial setup
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/USER/ba-skills.git
git branch -M main
git push -u origin main

# Regular updates
git add skills/[skill]/SKILL.md
git commit -m "improve/[skill]: [description]"
git push origin main

# Team pulls updates
cd ba-skills
git pull
./install.sh

# Create feature branch
git checkout -b feature/[name]
# ... make changes ...
git push origin feature/[name]
# Create PR on GitHub

# Merge PR (after review)
git checkout main
git pull
git merge feature/[name]
git push origin main
git branch -d feature/[name]
```

---

## 🆘 Troubleshooting

### Repository URL Error
```bash
# Verify remote is correct
git remote -v

# If wrong, update it
git remote set-url origin https://github.com/YOUR-USERNAME/ba-skills.git
```

### Authentication Issues
```bash
# If "Permission denied"
# Setup SSH key: https://docs.github.com/en/authentication/connecting-to-github-with-ssh

# Or use personal access token:
# https://github.com/settings/tokens
```

### Accidentally Pushed Wrong Files
```bash
# Undo last commit (before push)
git reset HEAD~1

# Or undo and edit
git reset --soft HEAD~1
# Make changes
git add .
git commit -m "fixed commit"
git push
```

---

## 📚 GitHub Resources

- **GitHub Documentation**: https://docs.github.com
- **Git Tutorial**: https://git-scm.com/book
- **GitHub Guides**: https://guides.github.com
- **Markdown Guide**: https://guides.github.com/features/mastering-markdown/

---

**You're ready to publish BA Skills!** 🚀

Go to: https://github.com/new and create your repository!

Questions? Check the FAQ in docs/ folder.
