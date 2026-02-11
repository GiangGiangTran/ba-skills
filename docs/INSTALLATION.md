# Installation Guide

## Prerequisites

- **Claude Code**: Latest version installed
- **Git**: Optional, for cloning repository
- **macOS/Linux/Windows**: All platforms supported

## Installation Methods

### Method 1: Automated Installation (Recommended)

```bash
# Step 1: Clone the repository
git clone https://github.com/your-username/ba-skills.git
cd ba-skills

# Step 2: Run installation script
chmod +x install.sh
./install.sh

# Step 3: Verify in Claude Code
# Type "/" in Claude Code - you should see all 5 skills
```

### Method 2: Manual Installation

```bash
# Copy skills directory
cp -r skills/* ~/.claude/skills/

# Or copy individual skills
cp -r skills/document-review ~/.claude/skills/
cp -r skills/requirement-analysis ~/.claude/skills/
cp -r skills/solution-design ~/.claude/skills/
cp -r skills/risk-assessment ~/.claude/skills/
cp -r skills/stakeholder-mapping ~/.claude/skills/
```

### Method 3: For Teams (GitHub Clone + Install)

```bash
# Clone as a team repository reference
git clone https://github.com/your-username/ba-skills.git team-ba-skills

# Each team member runs installation
cd team-ba-skills
./install.sh

# Optional: Keep as reference
# git pull       # to get updates
```

## Verification

### Step 1: Verify Claude Code Sees Skills

In Claude Code:
1. Type `/`
2. Look for these skills:
   - ✅ /document-review
   - ✅ /requirement-analysis
   - ✅ /solution-design
   - ✅ /risk-assessment
   - ✅ /stakeholder-mapping

### Step 2: Test a Skill

```
/requirement-analysis
```

Claude should respond asking for a file or context.

### Step 3: Check File Locations

```bash
# Verify skills installed
ls ~/.claude/skills/

# Should show:
# document-review/
# requirement-analysis/
# solution-design/
# risk-assessment/
# stakeholder-mapping/
```

## Troubleshooting

### Skills Not Appearing

**Problem**: Skills don't show when I type `/`

**Solution**:
```bash
# 1. Verify installation
ls ~/.claude/skills/

# 2. Check folder exists
ls -la ~/.claude/

# 3. Restart Claude Code
# Completely close and reopen Claude Code

# 4. Try installing again
cp -r skills/* ~/.claude/skills/
```

### Permission Denied Error

**Problem**: "Permission denied" when running install.sh

**Solution**:
```bash
# Make script executable
chmod +x install.sh

# Then run
./install.sh
```

### Skills Load But Error on Use

**Problem**: Skill loads but gives error when used

**Solution**:
1. Ensure SKILL.md file exists: `ls ~/.claude/skills/[skill-name]/SKILL.md`
2. Check file has correct format (YAML frontmatter)
3. Check YAML syntax is valid
4. Restart Claude Code

### Can't Find ~/.claude Directory

**Problem**: ~/.claude doesn't exist

**Solution**:
```bash
# Create it
mkdir -p ~/.claude/skills

# Then copy skills
cp -r skills/* ~/.claude/skills/
```

## Installation for Different Operating Systems

### macOS

```bash
# Standard installation
git clone https://github.com/your-username/ba-skills.git
cd ba-skills
./install.sh

# Or manual
cp -r skills/* ~/.claude/skills/
```

### Linux

```bash
# Standard installation
git clone https://github.com/your-username/ba-skills.git
cd ba-skills
chmod +x install.sh
./install.sh

# Or manual
cp -r skills/* ~/.claude/skills/
```

### Windows

```powershell
# PowerShell
git clone https://github.com/your-username/ba-skills.git
cd ba-skills

# Manual copy (replace paths with Windows paths)
Copy-Item -Recurse skills/* $env:USERPROFILE\.claude\skills\

# Or use Git Bash (same as Linux/macOS)
bash install.sh
```

## Installation for Organizations

### Setup for Team

```bash
# 1. Clone to shared location or internal git server
git clone https://github.com/your-org/ba-skills.git

# 2. Each team member installs locally
cd ba-skills
./install.sh

# 3. Optional: Create shared reference
git pull      # to get latest updates

# 4. Document in team wiki/Confluence
# Link to this repo, installation steps, usage guide
```

### Customize for Organization

```bash
# 1. Fork this repository to your GitHub org

# 2. Modify SKILL.md files:
vi skills/document-review/SKILL.md
# Add your company standards, templates, etc.

# 3. Update README.md with your org name

# 4. Push to internal repo
git push

# 5. Team members clone and install from your org repo
```

## Update Skills

### Check for Updates

```bash
# Check latest version
git log --oneline | head -5

# See what's changed
git diff HEAD~1 HEAD
```

### Update to Latest Version

```bash
# In the ba-skills repository directory
git pull origin main

# Reinstall
./install.sh
```

## Uninstallation

### Remove All Skills

```bash
# Remove all BA skills
rm -rf ~/.claude/skills/document-review
rm -rf ~/.claude/skills/requirement-analysis
rm -rf ~/.claude/skills/solution-design
rm -rf ~/.claude/skills/risk-assessment
rm -rf ~/.claude/skills/stakeholder-mapping
```

### Remove Specific Skill

```bash
# Remove only document-review
rm -rf ~/.claude/skills/document-review
```

### Keep Directory But Clear Specific Skill

```bash
# Safe removal of one skill
rm ~/.claude/skills/[skill-name]/SKILL.md
```

## Backup & Recovery

### Backup Your Skills

```bash
# Backup skills before making changes
cp -r ~/.claude/skills ~/backup-claude-skills-$(date +%Y%m%d)

# Restore from backup
cp -r ~/backup-claude-skills-20260211/* ~/.claude/skills/
```

### Version Control for Custom Skills

```bash
# If you've customized skills, save to git
cd ba-skills
git add skills/
git commit -m "Custom skill updates"
git push
```

## Advanced Installation

### Project-Level Skills (Single Project Only)

```bash
# Instead of ~/.claude/skills, use project-level
mkdir -p my-project/.claude/skills
cp -r skills/* my-project/.claude/skills/

# Skills now work only in this project
```

### Custom Installation Path

```bash
# If you need skills in custom location
mkdir -p /custom/path/to/skills
cp -r skills/* /custom/path/to/skills/

# Then create symlink
ln -s /custom/path/to/skills ~/.claude/skills
```

## Validation

### Verify Installation Quality

```bash
# Check all SKILL.md files exist
for skill in document-review requirement-analysis solution-design risk-assessment stakeholder-mapping
do
  [ -f ~/.claude/skills/$skill/SKILL.md ] && echo "✓ $skill" || echo "✗ $skill MISSING"
done

# Check file sizes (should be >5KB)
ls -lh ~/.claude/skills/*/SKILL.md

# Check for syntax errors
# (Claude Code will report if SKILL.md is invalid)
```

## Next Steps

After installation:

1. **Read**: [QUICK-START.md](QUICK-START.md) - 5-minute guide
2. **Learn**: [USAGE.md](USAGE.md) - Complete usage examples
3. **Explore**: Each skill's SKILL.md file has full framework
4. **Customize**: Modify SKILL.md files for your standards
5. **Share**: Install for your team

## Support

### Having Issues?

1. **Check troubleshooting above**
2. **Read FAQ**: [FAQ.md](FAQ.md)
3. **Check logs**: Look at Claude Code error messages
4. **Report issue**: [GitHub Issues](https://github.com/your-username/ba-skills/issues)

### Common Solutions

| Issue | Solution |
|-------|----------|
| Skills not visible | Restart Claude Code |
| SKILL.md not found | Check installation completed fully |
| Wrong output format | Update to latest version: `git pull` |
| Skill runs slow | Close other apps, check internet |
| Permission errors | Run `chmod +x install.sh` |

## Installation Summary Checklist

- ☑ Cloned/downloaded ba-skills repository
- ☑ Ran installation script or manual copy
- ☑ Verified ~/.claude/skills/ directory exists
- ☑ Saw all 5 skills when typed `/` in Claude Code
- ☑ Successfully ran at least one skill
- ☑ Read QUICK-START.md
- ☑ Ready to use for projects!

---

**Need help?** Check [FAQ.md](FAQ.md) or open an [issue on GitHub](https://github.com/your-username/ba-skills/issues)
