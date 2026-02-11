---
name: stakeholder-management
description: "Master stakeholder engagement - identify decision-makers, manage expectations, navigate conflicts, build coalitions, communicate effectively with different audiences. Use for engaging sponsors, managing competing interests, and building stakeholder buy-in."
allowed-tools: Write
context: fork
agent: Explore
argument-hint: [project-name] [optional-context]
user-invocable: true
---

# Stakeholder Management for BA

Navigate complexity of multiple interests, personalities, and agendas.

## What is Stakeholder Management?

**Definition**: Systematic process of identifying people with interest/influence in project, understanding their needs, managing expectations, and building coalitions for success.

**Why it matters**:
- Surprised stakeholders derail projects (scope creep, budget, timeline)
- Conflicting stakeholders paralyze decisions (executive vs user vs technical)
- Early engagement prevents late changes (expensive rework)
- Coalition building ensures support through challenges

**When to Use**:
- ✅ Starting new initiative (identify who matters)
- ✅ Major changes (manage resistance and concerns)
- ✅ Conflicting interests (negotiate competing needs)
- ✅ Before decision points (build consensus)
- ✅ Throughout project (keep stakeholders aligned)

---

## Core Stakeholder Management Concepts

### **1. Power/Interest Matrix**

Categorize stakeholders to determine engagement strategy.

```
              HIGH INTEREST
                    |
        MANAGE       |      MANAGE CLOSELY
        SATISFACTI. |  (Monthly updates,
                    |   Include in decisions)
    ────────────────┼────────────────
                    |
        MONITOR      |      KEEP SATISFIED
                    |  (Quarterly updates,
                    |   Consider preferences)
    ────────────────┼────────────────
              LOW INTEREST

(Power →)
```

**Placement**:
- **Manage Closely** (High Power, High Interest): Sponsor, PM, Key user - involve in decisions
- **Keep Satisfied** (High Power, Low Interest): Finance, Legal - provide updates, prevent objections
- **Manage Satisfaction** (Low Power, High Interest): Team, Daily users - keep informed
- **Monitor** (Low Power, Low Interest): Peripheral users - minimal contact

---

### **2. Stakeholder Archetypes**

Different types need different approaches:

| Archetype | Motivates | Concerns | Approach |
|-----------|-----------|----------|----------|
| **Sponsor/Executive** | ROI, timeline, budget | Risk, cost overruns | Data-driven, executive summary, business case |
| **End User** | Ease of use, solves problems | Change, learning curve | Demos, training, involvement in design |
| **Technical Lead** | Feasibility, architecture, quality | Technical debt, scalability | Technical discussion, trade-off explanations |
| **Resistor** | Status quo, job security | Risk to them personally | Listen, acknowledge concerns, show benefits to them |
| **Champion** | Success, solving real problems | Lack of support, visibility | Empower them, make them visible |

---

### **3. Stakeholder Engagement Spectrum**

Different levels of involvement appropriate for different stakeholder types:

```
Inform          Consult         Involve         Collaborate      Empower
    ↓               ↓               ↓               ↓               ↓
(Tell them)    (Ask opinion)   (Include in     (Partner on      (Trust with
               (One-way)       planning)       decisions)        decisions)
                              (Two-way)
```

**Choose based on**:
- Power (influence level)
- Interest (how much it affects them)
- Expertise (what they know)

---

## 5 Key Stakeholder Management Practices

### **1. Early & Continuous Identification**

❌ **Bad**: Identify stakeholders at project kickoff
✅ **Good**: Identify stakeholders in discovery phase

**Process**:
1. **Primary Discovery**: Ask sponsor who else matters
2. **Expanding Discovery**: Ask each stakeholder who else should be involved
3. **Organize**: Create stakeholder register (name, role, power, interest, concerns)
4. **Reassess**: Each phase may introduce new stakeholders
5. **Document**: Keep register updated throughout project

**See**: `references/stakeholder-identification.md`

---

### **2. Expectation Management**

Set realistic expectations early, then meet or exceed them.

**Framework**:
```
Week 1: Communicate
- What we will deliver (scope)
- When we'll deliver (timeline)
- How we'll work (approach)
- What we need from them (input/decision timing)

Weeks 2+: Update regularly
- If on track → "We're on schedule"
- If issue spotted → "We found X, here's mitigation"
- Before missed expectation → "Timeline will slip due to X"

At completion:
- Meet commitment = ✓ Trust building
- Exceed commitment = ✓ Delight
- Miss commitment = ✗ Trust erosion
```

---

### **3. Conflict Resolution**

Navigate competing interests systematically.

**Process**:
```
SITUATION: Sponsor wants Feature A, Users want Feature B

Step 1: Understand Both Sides
- What does each need? Why?
- What's the underlying concern?
- Is this either/or or can we address both?

Step 2: Explore Options
Option 1: Build A, Users get B in Phase 2
Option 2: Build both but phase them
Option 3: Build different solution that addresses both concerns
Option 4: Data-driven approach - test what matters more

Step 3: Decide Together
- Present options with trade-offs
- Let stakeholders choose
- Document decision and rationale

Step 4: Commit & Move Forward
- Clear communication of what won
- Explain why other options weren't chosen
- Keep losing side informed of progress
```

**See**: `references/conflict-resolution.md`

---

### **4. Coalition Building**

Identify and activate supporters to help drive change.

**Steps**:
1. **Identify Champions** - Who genuinely wants this to succeed?
2. **Understand Their Motivation** - Why do they care?
3. **Empower Them** - Give them information, talking points, visibility
4. **Mobilize Them** - Ask them to support at key moments (decisions, reviews)
5. **Recognize Them** - Public credit for their contribution

**Example**:
```
Champions in different areas:
- Executive champion: PM with budget authority
- User champion: Power user who influences others
- Technical champion: Architect who drives engineering
- Operations champion: Operations leader who controls rollout

Each one helps drive adoption in their domain
```

---

### **5. Transparent Communication**

Different stakeholder types need different messages and formats.

**Communication Strategy**:
```
EXECUTIVE SPONSOR:
- What: Business impact (ROI, risk, timeline)
- Format: 1-page executive summary
- Frequency: Monthly
- Key question: "Are we on track?"

END USERS:
- What: How it solves their problems
- Format: Demo, walkthrough, training
- Frequency: Bi-weekly during design
- Key question: "Will this work for me?"

TECHNICAL TEAM:
- What: Architecture, trade-offs, constraints
- Format: Technical documentation, discussions
- Frequency: Weekly
- Key question: "Is this feasible?"

RESISTORS:
- What: How change addresses their concerns
- Format: One-on-one conversation
- Frequency: Before decisions
- Key question: "What concerns do you have?"
```

---

## Stakeholder Lifecycle

### **Phase 1: Identification (Weeks 1-2)**
- Discover all stakeholders
- Assess power and interest
- Create stakeholder register

### **Phase 2: Engagement Planning (Weeks 3-4)**
- Define engagement strategy for each group
- Plan communication approach
- Establish feedback mechanisms

### **Phase 3: Active Engagement (Weeks 5+)**
- Regular communication per plan
- Gather feedback systematically
- Address concerns proactively
- Manage conflicts as they arise

### **Phase 4: Transition (End of project)**
- Prepare for handoff/adoption
- Address transition concerns
- Build support for change
- Celebrate success together

---

## Tools & Templates

- 📋 **Stakeholder Register Template**: `assets/stakeholder-register-template.md`
- 📋 **Power/Interest Matrix Template**: `assets/power-interest-template.md`
- 📋 **Communication Plan Template**: `assets/communication-plan-template.md`
- 📋 **Conflict Resolution Worksheet**: `assets/conflict-resolution-worksheet.md`
- 📋 **Coalition Building Guide**: `assets/coalition-building-guide.md`

---

## Usage Examples

```
/stakeholder-management "AI Task Management Platform"
/stakeholder-management "Mobile App Redesign" "Enterprise client with 50 users"
/stakeholder-management "Process Automation Initiative" "Healthcare industry with compliance requirements"
```

---

## BA Standards & References

Based on:
- **PMBOK**: Stakeholder Engagement Management
- **BABOK**: Stakeholder Analysis and Communication Planning
- **Change Management**: Kotter's 8-Step Process
- **Organizational Dynamics**: Power dynamics and influence

**Detailed Frameworks**:
- 📚 `references/stakeholder-identification.md` - Finding all stakeholders
- 📚 `references/power-interest-analysis.md` - Categorizing and prioritizing
- 📚 `references/conflict-resolution.md` - Navigating competing interests
- 📚 `references/communication-planning.md` - Message tailoring by audience
- 📚 `references/coalition-building.md` - Activating supporters
