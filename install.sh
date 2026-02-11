#!/bin/bash

# BA Skills Installation Script
# Installs all 5 BA professional skills to Claude Code

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
SKILLS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/skills"
CLAUDE_SKILLS_DIR="$HOME/.claude/skills"
SKILLS=("document-review" "requirement-analysis" "solution-design" "risk-assessment" "stakeholder-mapping")

echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║         BA Skills Installation Script                      ║${NC}"
echo -e "${BLUE}║      Professional Business Analyst Skills for Claude       ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Step 1: Check Claude Code directory
echo -e "${YELLOW}[1/5]${NC} Checking Claude Code directory..."
if [ ! -d "$HOME/.claude" ]; then
    echo -e "${YELLOW}  → Creating $HOME/.claude directory${NC}"
    mkdir -p "$HOME/.claude/skills"
else
    if [ ! -d "$CLAUDE_SKILLS_DIR" ]; then
        echo -e "${YELLOW}  → Creating $CLAUDE_SKILLS_DIR directory${NC}"
        mkdir -p "$CLAUDE_SKILLS_DIR"
    fi
fi

if [ -d "$CLAUDE_SKILLS_DIR" ]; then
    echo -e "${GREEN}✓ Claude Code directory ready${NC}"
else
    echo -e "${RED}✗ Failed to create Claude Code directory${NC}"
    exit 1
fi

# Step 2: Verify skills source
echo ""
echo -e "${YELLOW}[2/5]${NC} Verifying skill files..."
MISSING_SKILLS=0
for skill in "${SKILLS[@]}"; do
    if [ -f "$SKILLS_DIR/$skill/SKILL.md" ]; then
        echo -e "${GREEN}✓${NC} $skill/SKILL.md found"
    else
        echo -e "${RED}✗${NC} $skill/SKILL.md NOT found"
        MISSING_SKILLS=$((MISSING_SKILLS + 1))
    fi
done

if [ $MISSING_SKILLS -gt 0 ]; then
    echo -e "${RED}✗ $MISSING_SKILLS skill file(s) missing!${NC}"
    exit 1
fi
echo -e "${GREEN}✓ All skill files verified${NC}"

# Step 3: Backup existing skills
echo ""
echo -e "${YELLOW}[3/5]${NC} Backing up existing skills (if any)..."
BACKUP_DIR="$HOME/.claude/skills.backup.$(date +%Y%m%d.%H%M%S)"
if [ -d "$CLAUDE_SKILLS_DIR" ]; then
    if [ "$(ls -A $CLAUDE_SKILLS_DIR 2>/dev/null)" ]; then
        cp -r "$CLAUDE_SKILLS_DIR" "$BACKUP_DIR"
        echo -e "${GREEN}✓ Backed up to $BACKUP_DIR${NC}"
    else
        echo -e "${GREEN}✓ No existing skills to backup${NC}"
    fi
else
    echo -e "${GREEN}✓ Skills directory is new${NC}"
fi

# Step 4: Copy skills
echo ""
echo -e "${YELLOW}[4/5]${NC} Installing skills..."
for skill in "${SKILLS[@]}"; do
    echo -e "${BLUE}  Installing: $skill${NC}"

    # Create skill directory
    mkdir -p "$CLAUDE_SKILLS_DIR/$skill"

    # Copy SKILL.md
    cp "$SKILLS_DIR/$skill/SKILL.md" "$CLAUDE_SKILLS_DIR/$skill/"
    echo -e "    ${GREEN}✓${NC} SKILL.md copied"

    # Copy scripts if they exist
    if [ -d "$SKILLS_DIR/$skill/scripts" ] && [ "$(ls -A $SKILLS_DIR/$skill/scripts 2>/dev/null)" ]; then
        mkdir -p "$CLAUDE_SKILLS_DIR/$skill/scripts"
        cp -r "$SKILLS_DIR/$skill/scripts/"* "$CLAUDE_SKILLS_DIR/$skill/scripts/"
        echo -e "    ${GREEN}✓${NC} scripts/ copied"
    fi

    # Copy references if they exist
    if [ -d "$SKILLS_DIR/$skill/references" ] && [ "$(ls -A $SKILLS_DIR/$skill/references 2>/dev/null)" ]; then
        mkdir -p "$CLAUDE_SKILLS_DIR/$skill/references"
        cp -r "$SKILLS_DIR/$skill/references/"* "$CLAUDE_SKILLS_DIR/$skill/references/"
        echo -e "    ${GREEN}✓${NC} references/ copied"
    fi

    # Copy assets if they exist
    if [ -d "$SKILLS_DIR/$skill/assets" ] && [ "$(ls -A $SKILLS_DIR/$skill/assets 2>/dev/null)" ]; then
        mkdir -p "$CLAUDE_SKILLS_DIR/$skill/assets"
        cp -r "$SKILLS_DIR/$skill/assets/"* "$CLAUDE_SKILLS_DIR/$skill/assets/"
        echo -e "    ${GREEN}✓${NC} assets/ (templates) copied"
    fi
done

echo -e "${GREEN}✓ All skills installed${NC}"

# Step 5: Verify installation
echo ""
echo -e "${YELLOW}[5/5]${NC} Verifying installation..."
INSTALLED_COUNT=0
for skill in "${SKILLS[@]}"; do
    if [ -f "$CLAUDE_SKILLS_DIR/$skill/SKILL.md" ]; then
        echo -e "${GREEN}✓${NC} $skill installed"
        INSTALLED_COUNT=$((INSTALLED_COUNT + 1))
    else
        echo -e "${RED}✗${NC} $skill installation failed"
    fi
done

echo ""
echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                   Installation Summary                     ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "  ${GREEN}✓ Skills installed: $INSTALLED_COUNT/${#SKILLS[@]}${NC}"
echo -e "  ${GREEN}✓ Location: $CLAUDE_SKILLS_DIR${NC}"
echo ""

if [ $INSTALLED_COUNT -eq ${#SKILLS[@]} ]; then
    echo -e "${GREEN}✓ Installation successful!${NC}"
    echo ""
    echo -e "${YELLOW}Next steps:${NC}"
    echo "  1. Restart Claude Code (completely close and reopen)"
    echo "  2. Type '/' in Claude Code to see all skills"
    echo "  3. Try: /requirement-analysis your-scope.txt"
    echo ""
    echo -e "${YELLOW}Learn more:${NC}"
    echo "  • Quick start: docs/QUICK-START.md"
    echo "  • Full guide: docs/USAGE.md"
    echo "  • FAQ: docs/FAQ.md"
    echo ""
    echo -e "${YELLOW}Backup location (if needed):${NC}"
    if [ -d "$BACKUP_DIR" ]; then
        echo "  $BACKUP_DIR"
    else
        echo "  (No backup created)"
    fi
else
    echo -e "${RED}✗ Installation incomplete - some skills failed${NC}"
    exit 1
fi
