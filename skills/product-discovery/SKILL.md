---
name: product-discovery
description: "Conduct product discovery and research - identify problems, validate assumptions, research users and markets, create product briefs for handoff to product managers. Use when starting new features, validating product ideas, or planning new products."
allowed-tools: Read, Write, Grep, Bash
context: fork
agent: Explore
user-invocable: true
argument-hint: [problem-statement] [target-audience]
---

# Product Discovery & Research

Conduct comprehensive product discovery through 4 parallel research tracks.

## Quick Overview

**4 Research Tracks** (run in parallel):

1. **User Research**: Understand user needs, pain points, current solutions
2. **Market Research**: Market size (TAM/SAM/SOM), trends, competitive landscape
3. **Technical Feasibility**: Technology options, scalability, resource requirements
4. **Business Viability**: Business model, unit economics, ROI, success metrics

**Output**: Product Brief ready for handoff to Product Manager

---

## Discovery Process

**Phase 1: Problem Discovery**
- Validate the problem exists (not assumed)
- Understand who has the problem
- Document current solutions and gaps

**Phase 2: Research** (4 parallel tracks)
- User research: Interviews, personas, journey maps
- Market research: TAM/SAM/SOM, trends, competitors
- Technical: Tech options, scalability, risks
- Business: Business case, financials, ROI

**Phase 3: Solution Exploration**
- Define solution approach
- Validate solution against problem
- Identify trade-offs and constraints

**Phase 4: Success Definition**
- Define KPIs and success metrics
- Set timeline milestones
- Plan measurement approach

**See references/discovery-framework.md for detailed framework**

---

## Key Frameworks & Methodologies

**Frameworks Used**:
- **Jobs-to-be-Done (JTBD)**: Understand what job user is trying to accomplish
- **5 Whys**: Find root cause by asking "Why?" 5 times
- **SMART Goals**: Specific, Measurable, Achievable, Relevant, Time-bound
- **TAM/SAM/SOM**: Market sizing approach
- **Impact vs Effort Matrix**: Prioritization method

**See references/research-methodologies.md for detailed explanations**

---

## Quality Assessment

✅ **Good Discovery**:
- Problem validated with real users (not assumptions)
- Data-driven (research findings, quotes, metrics)
- Clear target audience (specific, not "everyone")
- Market opportunity quantified (TAM/SAM/SOM)
- Competitive advantage identified
- Success metrics measurable
- Technical feasibility assessed
- Business case compelling

❌ **Poor Discovery**:
- Problem assumed, not validated
- No research conducted
- Vague target audience
- Market opportunity guessed
- Success metrics vague
- Missing competitive analysis
- Not ready for PM handoff

**See references/research-methodologies.md for complete quality checklist**

---

## Output Format

### Product Brief (Main Deliverable)

Complete document with:
- Executive summary
- Problem statement & evidence
- Target users & personas
- Market opportunity (TAM/SAM/SOM)
- Solution vision
- Success metrics & KPIs
- Technical feasibility assessment
- Business case & ROI
- Assumptions & risks
- Go-to-market strategy
- Ready for PM/Design handoff

**Use template**: `assets/product-brief-template.md`

### Research Report (Supporting)

Detailed findings from 4 research tracks with:
- Findings by track (user, market, technical, business)
- Patterns & themes
- Personas & journey maps
- Competitive analysis
- Risk assessment
- Recommendations
- Next steps

**Use template**: `assets/research-report-template.md`

---

## Usage Examples

```
/product-discovery "Mobile payment friction in e-commerce" "Mobile users"
/product-discovery "Developer tooling for AI applications" "AI Engineers"
/product-discovery "Sustainability reporting for enterprises" "Large companies"
```

---

## Standards & References

Based on:
- **Design Thinking**: Problem-first, user-centric approach
- **Lean Startup**: Validated learning, MVP approach
- **Product Discovery**: User research best practices
- **Business Analysis**: BABOK discovery phase
- **User Research**: Qualitative & quantitative methods

For detailed frameworks, methodologies, and examples:
- 📚 `references/discovery-framework.md` - Complete 4-phase framework
- 🔍 `references/research-methodologies.md` - Detailed frameworks & techniques
- 📋 `assets/product-brief-template.md` - Product brief template
- 📊 `assets/research-report-template.md` - Research report template
