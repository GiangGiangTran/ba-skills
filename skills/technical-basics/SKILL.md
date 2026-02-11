---
name: technical-basics
description: "Master technical domain knowledge - understand architecture, scalability, technical constraints, trade-offs, and implications. Use for feasibility assessment, design discussions, and communicating with engineering teams."
allowed-tools: Write
context: fork
agent: Explore
argument-hint: [question-topic] [optional-context]
user-invocable: true
---

# Technical Basics for BA

You don't need to code. You need to understand trade-offs.

## What is Technical Domain Knowledge?

**Definition**: Understanding how technology systems work, their constraints, scalability boundaries, and design trade-offs - enough to have smart conversations with engineers.

**Why it matters**:
- Unrealistic requirements: Asking for impossible things
- Missed constraints: Not understanding why engineer says "no"
- Bad prioritization: Not realizing feature X is 100x harder than Y
- Poor decisions: Technical trade-offs seem obvious to engineer, mystery to you

**When to Use**:
- ✅ Assessing feature feasibility
- ✅ Understanding technical constraints
- ✅ Evaluating architecture options
- ✅ Discussing scalability implications
- ✅ Making informed technical trade-offs

---

## 5 Core Technical Concepts

### **1. Scalability: The Numbers**

How many users can system handle?

```
TYPICAL SCALABILITY JOURNEY:

10-100 users:
- Single server (everything on one machine)
- Database on same server
- Works great for MVP
- Cost: $10-50/month

100-1,000 users:
- Separate database server
- Load balancer in front
- Caching layer added
- Cost: $100-500/month

1,000-10,000 users:
- Multiple app servers
- Database read replicas
- Cache + CDN
- Microservices considered
- Cost: $1K-5K/month

10,000-100,000 users:
- Microservices architecture
- Database sharding (split data)
- Advanced caching strategies
- Dedicated infrastructure
- Cost: $10K-50K/month

100K+ users:
- Global distribution
- Advanced optimization
- Custom infrastructure
- Requires specialized engineers
- Cost: $100K+/month
```

**Question to ask**: "How many users do we expect at launch? In 1 year? In 3 years?"
This determines architecture choice.

**See**: `references/scalability.md`

---

### **2. Architecture: Build vs Buy vs Wait**

Three ways to solve technical needs:

```
Build (Custom code):
- Best fit for unique needs
- Slowest to market
- Most expensive
- Ongoing maintenance burden
- Example: Custom CRM for your specific workflow

Buy (Third-party service):
- Fast to market
- Lower cost initially
- Limited customization
- Integration overhead
- Example: Stripe for payments, Twilio for SMS

Wait (Use what you have):
- Cheapest option
- Familiar to team
- May not scale well
- Technical debt grows
- Example: Use existing analytics instead of building new one
```

---

### **3. Technical Debt: Pay Now or Later**

Every shortcut costs us later.

```
TAKING A SHORTCUT (Tech Debt):
Approach: Hardcode user permissions in code (quick, dirty)
Cost today: 1 hour instead of 4 hours
Cost later: When we need to change permissions, we change 50 files

DOING IT RIGHT:
Approach: Build permissions system (takes longer)
Cost today: 4 hours instead of 1 hour
Cost later: Easy to change, maintain, expand
Cost avoided: Refactoring nightmare
```

**BA Perspective**:
- Understand when team is taking shortcuts
- Document technical debt (interest compounds)
- Plan for paydown (like financial debt)
- Factor into timelines and budgets

---

### **4. Integration Complexity: Connecting Systems**

Most projects integrate with existing systems. This is hard.

```
INTEGRATION DIFFICULTY LEVELS:

Level 1 - API to API (REST, GraphQL):
- Two systems talk via API
- Effort: 1-2 weeks
- Risk: Low
- Example: Our app calling payment processor API

Level 2 - Database Integration:
- Systems share database
- Effort: 2-4 weeks
- Risk: Medium (data consistency issues)
- Example: Old system needs to read new system's data

Level 3 - Legacy System Integration:
- Integrating with 20-year-old system
- Effort: 4-12 weeks
- Risk: High
- Example: New app needs to talk to mainframe system

Level 4 - Complex Data Sync:
- Systems need to stay in sync (two-way)
- Effort: 8-16 weeks
- Risk: Very high (inconsistency, conflicts)
- Example: Salesforce + custom system sync

Rule: Plan 3x longer for integrations than greenfield features
```

---

### **5. Testing: The Quality Equation**

More testing = higher quality = higher cost

```
TEST PYRAMID:

        /\
       /  \  E2E (End-to-End)
      /────\  10 tests, 1 hour each
     /      \
    /────────\
   /  /    \  \  Integration
  /  /      \  \ 30 tests, 30 min each
 /  /        \  \
/──/──────────\──\
   Unit Tests: 100 tests, 1 min total

FORMULA:
Code Coverage + Risk = Testing Effort
- Critical path (payments): 90% test coverage
- Nice-to-have feature: 60% test coverage
- Configuration: 30% test coverage
```

---

## Common Technical Trade-Offs

### **Speed vs Quality**

```
Fast Launch (3 months):
- Minimal testing (50% coverage)
- Some technical debt
- Launch quickly, gather feedback
- Risk: Quality issues, user frustration

Careful Launch (6 months):
- Comprehensive testing (90% coverage)
- Clean code, documented
- Polished at launch
- Risk: Missing market window, delayed ROI

Decision factors:
- Market timing (are we too late already?)
- Competitive pressure (will competitor beat us?)
- Reputational risk (is product quality critical to brand?)
```

---

### **Simplicity vs Features**

```
Simple MVP (100K project):
- Core feature only
- Works well for 1,000 users
- Easier to understand/maintain
- Limits addressable market

Feature-Rich (500K project):
- 5 major features
- More complex, harder to maintain
- Serves more use cases
- Harder to get right
```

---

### **Monolithic vs Microservices**

```
Monolithic (One codebase):
- Easier to build initially
- Faster to launch
- One failure takes down everything
- Easier to coordinate

Microservices (Multiple separate systems):
- Scalable (each service independent)
- Resilient (failure isolated)
- Complex to build/operate
- Need experienced team
```

---

## Questions BA Should Ask Engineers

**When exploring new feature**:
1. "Is this feasible? Rough effort?"
2. "Any technical blockers?"
3. "Does this require architectural changes?"
4. "Will this impact scalability?"
5. "How does this integrate with existing systems?"

**When prioritizing**:
1. "Which is technically riskier, A or B?"
2. "Which takes more time, A or B?"
3. "Can we build A and B in parallel or sequential?"
4. "Does building A make B easier or harder?"

**When planning timeline**:
1. "How long is actual development vs testing vs integration?"
2. "What are the critical path items (blocking others)?"
3. "What can run in parallel?"
4. "What's the biggest technical risk?"

---

## Tools & Templates

- 📋 **Technical Feasibility Assessment**: `assets/feasibility-assessment.md`
- 📋 **Scalability Planning Worksheet**: `assets/scalability-worksheet.md`
- 📋 **Integration Complexity Evaluation**: `assets/integration-complexity-template.md`
- 📋 **Technical Risk Assessment**: `assets/technical-risk-template.md`
- 📋 **Trade-off Analysis Template**: `assets/tradeoff-template.md`

---

## Usage Examples

```
/technical-basics "scalability" "Do we need microservices for our use case?"
/technical-basics "integration" "How hard is integrating with Salesforce?"
/technical-basics "tradeoff" "Should we use our custom solution or third-party?"
```

---

## BA Standards & References

Based on:
- **Software Architecture**: System design, patterns, scalability
- **System Design**: CAP theorem, consistency models
- **Operations**: Deployment, monitoring, reliability
- **Engineering Economics**: Cost of technical decisions

**Detailed Frameworks**:
- 📚 `references/scalability.md` - Scaling from 10 to 1M users
- 📚 `references/architecture-patterns.md` - Monolithic vs microservices vs serverless
- 📚 `references/integration-approaches.md` - APIs, databases, messaging, file transfers
- 📚 `references/technical-risk.md` - Identifying and mitigating technical risks
- 📚 `references/tradeoff-framework.md` - Making informed technical choices
