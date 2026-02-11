# Contributing Guide

Thank you for interest in improving BA Skills! This guide explains how to extend, improve, or create new skills.

## Types of Contributions

### 1. Improve Existing Skills ⭐
- Enhance frameworks and checklists
- Add new analysis categories
- Improve output formatting
- Add templates or examples
- Fix typos or unclear sections

### 2. Add New Skills 🚀
- Create additional BA skills
- Add supporting skills (e.g., Metrics & Analytics, Competitive Analysis)
- Extend existing frameworks

### 3. Documentation 📖
- Improve guides and examples
- Add FAQ entries
- Create tutorials
- Translate to other languages

### 4. Templates & Examples 📋
- Create company-specific templates
- Add real-world examples
- Build template libraries

## Improving Existing Skills

### Step 1: Fork & Clone

```bash
git clone https://github.com/your-username/ba-skills.git
cd ba-skills
```

### Step 2: Create a Branch

```bash
# For improvements
git checkout -b improve/document-review

# For bug fixes
git checkout -b fix/requirement-analysis-bug

# For documentation
git checkout -b docs/add-examples
```

### Step 3: Make Changes

Edit the SKILL.md file:

```bash
# Example: Improve document-review skill
vi skills/document-review/SKILL.md
```

**What to modify:**
- Checklists (add/improve criteria)
- Frameworks (enhance analysis structure)
- Examples (add use cases)
- Output format (improve presentation)
- Quality indicators (clarify good vs bad)

### Step 4: Test Your Changes

```bash
# Copy updated skill to Claude Code
cp skills/document-review/SKILL.md ~/.claude/skills/document-review/

# Test in Claude Code
# Type: /document-review
# Test with sample documents
```

### Step 5: Document & Commit

```bash
git add skills/document-review/SKILL.md
git commit -m "Improve document-review: Add template validation checklist"
# Message format: improve/[skill]: [what changed]
```

### Step 6: Create Pull Request

On GitHub:
1. Go to your fork
2. Click "New Pull Request"
3. Select your branch
4. Fill in description:
   - What changed
   - Why it's needed
   - How to test

**Example PR description:**
```
## Improve Document Review Skill

### Changes
- Added template validation checklist
- Clarified quality indicators
- Added 3 new real-world examples

### Why
Team feedback indicated unclear quality standards
New examples help users understand expectations better

### How to Test
1. Use /document-review on requirements.md
2. Verify new checklist items appear
3. Review output quality
```

## Creating New Skills

### Step 1: Understand Skill Structure

```
my-new-skill/
├── SKILL.md                 # Required: Main skill file
├── scripts/                 # Optional: Python/Bash scripts
│   └── process_data.py
├── references/              # Optional: Documentation/schemas
│   └── api-reference.md
└── assets/                  # Optional: Templates, boilerplate
    └── template.md
```

### Step 2: Create Skill Directory

```bash
mkdir -p skills/my-new-skill/{scripts,references,assets}
```

### Step 3: Write SKILL.md

```markdown
---
name: my-new-skill
description: "Clear description of what this skill does. Include when/how to use it. This is shown to Claude to determine when to activate the skill."
user-invocable: true
allowed-tools: Read, Write, Grep, Bash
argument-hint: [input-file] [parameter]
---

# Skill Title

## Framework/Process

Clear explanation of:
- What the skill does
- How it works
- What it outputs

## Usage

Examples:
```
/my-new-skill input.txt parameter
```

## Output

What user will receive...
```

### Step 4: Add Examples to Description

Make description detailed:

```yaml
description: "Analyze market trends - identify opportunities, competitive threats, and market gaps. Use when researching markets, competitive analysis, or identifying business opportunities. Outputs: trend analysis, competitive matrix, opportunity assessment."
```

### Step 5: Create Assets (If Needed)

```bash
# Create templates
touch skills/my-new-skill/assets/analysis-template.md
touch skills/my-new-skill/assets/report-template.md
```

### Step 6: Test Thoroughly

```bash
# Copy to Claude Code
cp -r skills/my-new-skill ~/.claude/skills/

# Test extensively:
# /my-new-skill test-input.txt
# Verify output quality
# Check framework completeness
```

### Step 7: Document & Submit

```bash
git add skills/my-new-skill/
git commit -m "Add new skill: my-new-skill for market analysis"
```

Create Pull Request with:
- Skill purpose
- Framework/methodology
- Example use cases
- Output samples

## Code Quality Guidelines

### For SKILL.md Files

1. **Keep Concise**
   - Main framework: < 500 lines ideally
   - Use references/ for long documentation
   - Link to assets/ for templates

2. **Structure Clearly**
   - Use headers (H2, H3) for organization
   - Use tables for comparisons
   - Use code blocks for examples
   - Use lists for procedures

3. **Quality Indicators**
   - Include "Good ✓" vs "Bad ✗" examples
   - Show quality metrics
   - Explain scoring/assessment

4. **Professional Standards**
   - Reference standards (BABOK, PMBOK, IEEE, ISO)
   - Include professional best practices
   - Show industry-standard formats

### For Templates

1. **Clear Structure**
   - Easy to understand sections
   - Placeholder comments
   - Example values

2. **Reusable Format**
   - Works for multiple contexts
   - Customizable sections
   - Copy-paste ready

3. **Professional Quality**
   - Standard formatting
   - Complete sections
   - Approval sign-off areas

## Best Practices

### DO ✓
- ✓ Keep SKILL.md focused and well-structured
- ✓ Include real-world examples
- ✓ Reference professional standards
- ✓ Test thoroughly before submitting
- ✓ Write clear commit messages
- ✓ Document your changes in PR
- ✓ Consider user experience
- ✓ Make incremental improvements

### DON'T ✗
- ✗ Don't add unnecessary complexity
- ✗ Don't duplicate existing frameworks
- ✗ Don't ignore professional standards
- ✗ Don't submit without testing
- ✗ Don't create large SKILL.md files (>1000 lines)
- ✗ Don't ignore user feedback
- ✗ Don't change core frameworks without discussion
- ✗ Don't submit without documentation

## Review Process

### What We Look For

1. **Quality**: Does it meet professional standards?
2. **Clarity**: Is it easy to understand and use?
3. **Completeness**: Does it cover the topic thoroughly?
4. **Testing**: Has it been tested with real use cases?
5. **Documentation**: Is the change well-documented?
6. **Consistency**: Does it align with existing skills?

### Feedback Loop

1. You submit PR
2. Maintainers review
3. Feedback is provided
4. You make revisions
5. PR is merged!

### Improving Based on Feedback

```bash
# Make requested changes
vi skills/document-review/SKILL.md

# Commit changes
git add skills/document-review/SKILL.md
git commit -m "Address PR feedback: clarify quality indicators"

# Push to your branch
git push

# PR automatically updates!
```

## Development Workflow

### Branch Naming

```
improve/[skill-name]-[what]    # Improvements
fix/[skill-name]-[what]        # Bug fixes
docs/[what]                     # Documentation
feature/[skill-name]            # New skills
```

### Commit Message Format

```
[type]/[skill]: [description]

Examples:
improve/document-review: Add template validation checklist
fix/requirement-analysis: Fix priority matrix calculation
docs: Add competitive analysis skill guide
feature/metrics-analytics: New skill for metrics
```

### Pull Request Template

```markdown
## Description
[What does this PR do?]

## Motivation
[Why is this change needed?]

## Changes
- [Change 1]
- [Change 2]
- [Change 3]

## Testing
[How to test this change?]

## Checklist
- [ ] Code follows style guidelines
- [ ] Documentation updated
- [ ] Tested with Claude Code
- [ ] No breaking changes
- [ ] Self-review completed
```

## Community Standards

### Be Respectful
- Constructive feedback
- Collaborative improvement
- Respectful disagreements
- Inclusive language

### Share Knowledge
- Help others understand frameworks
- Provide good examples
- Document decisions
- Share lessons learned

### Think Quality
- Professional standards
- User experience
- Real-world applicability
- Maintainability

## FAQ for Contributors

**Q: Can I modify a framework?**
A: Yes, but discuss major changes in an issue first

**Q: How long does review take?**
A: Usually 3-5 days, depends on complexity

**Q: Can I create company-specific skills?**
A: Yes! Fork the repo and customize for your org

**Q: What if my PR is rejected?**
A: We'll provide feedback on improvements needed

**Q: Can I translate to other languages?**
A: Yes! Please coordinate in an issue first

## Getting Help

### Before Contributing
- Read this guide
- Review existing skills
- Check open issues/PRs
- Read professional standards references

### While Contributing
- Leave comments in code/SKILL.md
- Ask questions in PR
- Test thoroughly
- Document your approach

### After Contributing
- Respond to feedback
- Update based on reviews
- Share what you learned
- Help others with similar changes

## Recognition

Contributors are recognized:
- In CONTRIBUTORS.md
- In release notes
- In skill documentation

Thank you for making BA Skills better! 🙏

---

## Quick Start for Contributors

```bash
# 1. Fork this repo on GitHub

# 2. Clone your fork
git clone https://github.com/YOUR-USERNAME/ba-skills.git
cd ba-skills

# 3. Create a branch
git checkout -b improve/my-change

# 4. Make changes
vi skills/[skill-name]/SKILL.md

# 5. Test
cp skills/[skill-name]/SKILL.md ~/.claude/skills/[skill-name]/
# Test in Claude Code: /[skill-name]

# 6. Commit
git add skills/[skill-name]/SKILL.md
git commit -m "improve/[skill-name]: [description]"

# 7. Push
git push origin improve/my-change

# 8. Create PR on GitHub
# Fill in PR template and submit!
```

---

**Questions?** Open an issue or discussion on GitHub!

**Thank you for contributing!** 🚀
