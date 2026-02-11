---
name: communication
description: "Master BA communication - write clearly and persuasively, present effectively to different audiences, document decisions, facilitate discussions, influence without authority. Use for stakeholder updates, requirement documentation, and decision communication."
allowed-tools: Write
metadata:
  version: "2.0"
  claude-code:
    context: fork
    agent: Explore
    user-invocable: true
---

# Communication for BA

Your ideas are worthless if you can't communicate them clearly.

## What is BA Communication?

**Definition**: Tailored communication that ensures different audiences understand, believe, and act on your message.

**Why it matters**:
- Unclear requirements → engineering builds wrong thing
- Confusing presentation → decision gets made without your input
- Poor documentation → knowledge lost when you leave
- Ineffective persuasion → good ideas get rejected

**When to Use**:
- ✅ Writing requirements (clear, unambiguous, usable)
- ✅ Presenting findings (persuasive, evidence-based)
- ✅ Documenting decisions (why we chose this, not that)
- ✅ Facilitating discussions (keeping everyone on same page)
- ✅ Influencing decisions (gaining buy-in and support)

---

## Core Communication Principles

### **1. Audience-First Thinking**

Every message has an audience. Know who they are.

```
SAME MESSAGE, DIFFERENT AUDIENCES:

Topic: New mobile app feature

EXECUTIVE SPONSOR:
"Feature will increase engagement 15% (validated by user testing),
 costing $80K to build. Estimated revenue impact: $400K annually.
 Recommend: Proceed with Phase 1 pilot."

ENGINEERING TEAM:
"Feature requires: Push notifications (Firebase), native iOS/Android,
 backend API changes, database schema update. Effort: 3 weeks,
 3 engineers. Technical risks: Battery drain on older phones,
 API rate limits at scale. Propose: POC first on iOS."

END USER:
"You can now get real-time notifications when tasks are assigned
 to you. Just enable notifications in Settings. Here's how [video]."

EACH AUDIENCE RECEIVES what matters to them.
```

---

### **2. Clarity Before Completeness**

Prioritize being understood over including everything.

**Structure**:
```
MAIN IDEA (why I'm telling you this)
↓
KEY POINTS (3-5 supporting points)
↓
SUPPORTING DETAILS (if audience wants to go deeper)
↓
QUESTIONS (invite dialogue)
```

**Example**:

❌ **Wrong**:
"The system has some scaling issues that we discovered during load
testing last week. We're considering several mitigation approaches
including database optimization, caching layer implementation, and
potential architectural changes. We'll need to evaluate trade-offs..."

✅ **Right**:
"Our system will fail under 100K users. Here's why and what we'll do:
1. Database queries too slow → Add indexes (1 week)
2. No caching → Implement Redis (2 weeks)
3. Monolithic architecture → Plan microservices Phase 3

Timeline: Can support 100K users in 4 weeks."

---

### **3. Evidence Over Assertion**

Support claims with data and examples.

❌ "Users don't like the interface"
✅ "8 of 10 users (80%) struggled finding the export button in testing"

❌ "We should build feature X"
✅ "Feature X requested by 60% of users, 40% willing to pay for it, competitors have it"

❌ "The team is frustrated"
✅ "3 team members reported stress about unclear requirements, 2 mentioned blocking dependencies"

---

## 5 Communication Formats for BA

### **Format 1: Requirements Documentation**

Clear, unambiguous, actionable specifications.

**Structure**:
```
REQUIREMENT: [Requirement ID] [Clear title]
DESCRIPTION: What it is (1-2 sentences)
ACCEPTANCE CRITERIA:
  - Testable, specific conditions
  - "When user does X, system shows Y"
  - NOT "The system should be fast"
PRIORITY: Must/Should/Could/Won't
EFFORT: Small/Medium/Large
DEPENDENCIES: What else needs this?
```

**See**: `references/requirements-writing.md`

---

### **Format 2: Executive Presentation**

2-5 minute persuasive presentation for decision-makers.

**Structure**:
```
OPENING: Why you're here (30 sec)
"I'm recommending we build feature X because it will increase
 revenue by $500K annually."

EVIDENCE: Why they should believe you (2 min)
- Market research shows demand
- Customer feedback validates need
- Competitive analysis shows gap
- Technical feasibility confirmed

RECOMMENDATION: What you want them to do (1 min)
- Approve $200K budget
- Assign 2 engineers by next week
- Make decision by Friday

CLOSING: Next steps (30 sec)
"I'll send detailed proposal by EOD. Questions?"
```

**See**: `references/executive-presentations.md`

---

### **Format 3: Decision Documentation**

Document the decision, not just the answer.

**Structure**:
```
DECISION: What we decided
"We will build the mobile app for iOS first, Android in Phase 2"

CONTEXT: Why this decision matters
"Revenue opportunity: $2M from iOS users, $1M from Android users"

OPTIONS CONSIDERED:
Option A: iOS and Android together
  Pros: Complete coverage day 1
  Cons: 3 more months to launch, $300K more expensive

Option B: iOS first, Android Phase 2
  Pros: Launch in 8 weeks, validated by iOS feedback
  Cons: Incomplete platform, 3-month delay for Android users

Option C: Web app instead
  Pros: Single codebase
  Cons: No offline, no push notifications, slower adoption

CHOSEN: Option B (iOS first)

RATIONALE: iOS users are 65% of install base and highest revenue
TRADE-OFFS: Android users wait 3 months
OWNER: PM assigned to mobile product
DATE: Decided 2026-02-15
REVIEW: Revisit in Q2 when iOS metrics available
```

**See**: `references/decision-documentation.md`

---

### **Format 4: Facilitating Discussions**

Keep group discussions productive.

**Before**:
- [ ] Clear agenda (30 min: Intro, Discussion, Decision)
- [ ] Pre-work (share materials before meeting)
- [ ] Time boundaries (respect people's time)

**During**:
- [ ] Opening: State decision/topic clearly
- [ ] Gather input: "What are your thoughts?"
- [ ] Listen actively: Clarify understanding
- [ ] Identify conflicts: "I hear two different perspectives..."
- [ ] Move to decision: "Can we agree on...?"

**After**:
- [ ] Document: What was decided, why
- [ ] Share: Send summary to attendees
- [ ] Commit: Next steps and owners

**See**: `references/facilitation-techniques.md`

---

### **Format 5: Influencing Without Authority**

Get buy-in when you can't just tell people what to do.

**Framework**:
```
1. UNDERSTAND THEIR POSITION
   What do they care about?
   What concerns do they have?
   What would convince them?

2. BUILD LOGICAL ARGUMENT
   Claim: "We should do X"
   Evidence: [3-5 data points supporting claim]
   Logic: "This evidence shows X is best because..."
   Conclusion: "Therefore we should do X"

3. ADDRESS COUNTERARGUMENTS
   "I know you're concerned about [cost/risk/effort].
    Here's how we address that..."

4. PROPOSE ALTERNATIVE IF NEEDED
   "If you prefer option Y, here's how that works..."

5. MAKE IT EASY TO SAY YES
   "Next steps: You approve, I'll set up kickoff for Wednesday"
```

---

## Document Quality Checklist

**Clarity**:
- [ ] Main point clear in first paragraph?
- [ ] Technical jargon avoided or defined?
- [ ] Sentences under 20 words?
- [ ] One idea per paragraph?

**Completeness**:
- [ ] All questions answered?
- [ ] Context provided for non-experts?
- [ ] Examples included where helpful?
- [ ] Next steps clear?

**Correctness**:
- [ ] Facts verified?
- [ ] Spelling/grammar checked?
- [ ] Consistent terminology?
- [ ] No outdated information?

**Persuasiveness**:
- [ ] Evidence provided?
- [ ] Objections addressed?
- [ ] Benefits clear?
- [ ] Call to action explicit?

---

## Communication by Stakeholder Type

| Stakeholder | Cares About | Communicate | Frequency |
|-------------|------------|-------------|-----------|
| **Executive** | ROI, timeline, risk | Business impact, decisions | Monthly |
| **End User** | Solves problem, easy | Benefits, how-to, training | Ad-hoc + demos |
| **Engineer** | Feasibility, clarity | Technical detail, trade-offs | Weekly |
| **PM** | Requirements, priorities | Use cases, data, reasoning | Bi-weekly |
| **Resistor** | Concerns, impact on them | How change helps them, support | One-on-one before decisions |

---

## Tools & Templates

- 📋 **Requirements Template**: `assets/requirement-template.md`
- 📋 **Executive Summary Template**: `assets/executive-summary-template.md`
- 📋 **Decision Documentation Template**: `assets/decision-template.md`
- 📋 **Presentation Outline**: `assets/presentation-template.md`
- 📋 **Meeting Agenda Template**: `assets/meeting-agenda-template.md`

---

## Usage Examples

```
/communication "executive-update" "Need to present risk mitigation plan"
/communication "requirement-documentation" "Complex feature with 3 edge cases"
/communication "facilitate-conflict" "Engineering vs Product disagreement on scope"
```

---

## BA Standards & References

Based on:
- **Technical Writing**: Clear communication principles
- **Persuasion**: Logic, evidence, audience psychology
- **Facilitation**: Group dynamics and decision-making
- **Documentation Standards**: IEEE 830 (SRS format)

**Detailed Frameworks**:
- 📚 `references/requirements-writing.md` - Clear, unambiguous specifications
- 📚 `references/executive-presentations.md` - Persuasive presentations for decision-makers
- 📚 `references/decision-documentation.md` - Recording decisions with rationale
- 📚 `references/facilitation-techniques.md` - Running productive discussions
- 📚 `references/audience-analysis.md` - Tailoring message to audience
