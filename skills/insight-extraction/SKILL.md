---
name: insight-extraction
description: "Master insight extraction - dig deep into data to find root causes, hidden opportunities, and non-obvious implications. Use for deeper analysis that leads to breakthrough understanding."
allowed-tools: Read, Write, Grep
context: fork
agent: Explore
argument-hint: [data-source] [investigation-question]
user-invocable: true
---

# Insight Extraction for BA

Data is plentiful. Insights are rare.

## What is Insight Extraction?

**Definition**: Deeper analysis that goes beyond surface observations to uncover root causes, hidden opportunities, and non-obvious implications that change how you think about the problem.

**Why it matters**:
- Surface observation: "Users don't like feature X"
- Real insight: "Users avoid feature X because they don't trust automated decisions without override"
- Outcome: Different solution (add transparency/override controls, not replace feature)

**Surface vs Insight**:
- ❌ Observation: "Sales of Premium tier is growing"
- ✅ Insight: "Premium growth driven by large deals, not customer expansion"
- ✅ Implication: Sales model needs enterprise focus, not self-serve

**When to Use**:
- ✅ When surface answer doesn't feel complete
- ✅ When you want to understand root cause
- ✅ When looking for breakthrough opportunities
- ✅ When contradictions need explanation
- ✅ When you need to understand "why" deeply

---

## 5 Insight Extraction Techniques

### **1. The "Why" Ladder**

Keep asking why until you reach real insight.

```
Surface: "Users don't use real-time notifications feature"

Why 1: Why don't they use it?
→ They don't know it exists

Why 2: Why don't they know it exists?
→ It's in a submenu they never open

Why 3: Why do they never open that submenu?
→ They don't know what's in there

Why 4: Why didn't they discover it?
→ No onboarding or discovery flow for advanced features

Why 5: Why is there no discovery flow?
→ Product team assumes users will explore

INSIGHT: Users don't explore. They need guided discovery.
NOT: "Feature is bad"
REAL INSIGHT: "Discovery mechanism is broken"

SOLUTION: Build discovery flow, don't kill feature
```

---

### **2. The Dichotomy Resolution**

When two contradictory observations exist, find the insight.

```
Contradiction:
- Observation A: "Customers love the product" (high NPS)
- Observation B: "Churn is higher than industry average" (15%)

Surface explanation: "They love it but leave anyway" (doesn't make sense)

Insight Extraction:
Q1: Who loves it? → Early users, power users
Q2: Who churns? → Late-adopter segment
Q3: Why difference? → Onboarding struggles for late-adopters
Q4: Why onboarding struggles? → Product designed for power users
Q5: What's the insight? → Product has adoption cliff for non-technical users

INSIGHT: Not a product problem (power users love it)
         It's an adoption/onboarding problem (late-adopters struggle)

SOLUTION: Redesign onboarding for non-technical users
          Don't change core product
```

---

### **3. The Segment Deep-Dive**

Compare segments to find root causes.

```
Observation: "Feature adoption is low (20%)"

Segment analysis:
├─ Enterprise: 60% adoption
├─ Mid-market: 25% adoption
└─ SMB: 8% adoption

Question: Why does adoption vary 60% to 8%?

Investigation:
- Enterprise: "Feature saves thousands in operational costs"
- Mid-market: "Feature helps but not critical"
- SMB: "Feature seems complicated for value provided"

Further investigation:
- Enterprise: "Our team has data analyst who discovered value"
- Mid-market: "We tried it, not sure of value"
- SMB: "Too much setup for small team"

INSIGHTS:
1. Feature has strong value for data-heavy operations (enterprise)
2. Value proposition unclear for smaller companies
3. Setup burden disproportionate for SMB

SOLUTION: Don't kill feature (enterprise needs it)
          Simplify onboarding/setup
          Or create SMB-specific version with less complexity
```

---

### **4. The Pattern Beyond Pattern**

When you find a pattern, dig into why that pattern exists.

```
Pattern Found: 70% of users abandon at step 3 (password step)

Surface insight: "Password step is confusing"

Deep insight extraction:
Q: Why is password step problematic?
→ Password requirements unclear
→ Error messages unhelpful
→ Mobile users struggle more than desktop

Q: Why do mobile users struggle more?
→ Mobile keyboard makes errors easier
→ Error recovery harder on mobile
→ Password visibility toggle missing

Q: Why is this specifically a mobile problem?
→ Desktop users used to traditional forms
→ Mobile users expect different interaction model

INSIGHT: Not "password step is bad"
         "Mobile UX model is desktop-centric, misses mobile patterns"

SOLUTION: Redesign password step for mobile-first interaction
          Add visibility toggle
          Improve error messages for mobile
```

---

### **5. The Opportunity Inversion**

Look at problems from different angle to find opportunities.

```
Problem: "Users avoid real-time collaboration feature"

Traditional: "Feature is too complex, simplify it"

Opportunity Inversion:
Q: Who DOES use real-time collaboration?
→ Large teams, distributed across time zones

Q: What's different about them?
→ They have collaboration pain
→ They're willing to learn complex features
→ They value real-time coordination

Q: Why aren't SMB/solo users using it?
→ Don't have collaboration need
→ It's not valuable for them

INSIGHT: It's not that feature is too complex
         It's that feature isn't valuable for solo users

OPPORTUNITY: Real-time collaboration is strong for teams
            Build team-focused marketing/positioning
            Don't simplify for solo users (dilutes for teams)

SOLUTION: Reposition as "Team Collaboration Platform"
          Stop trying to appeal to everyone
          Market specifically to teams
```

---

## 7-Step Insight Extraction Process

### **Step 1: Gather Observations**
- [ ] Collect all relevant data (interviews, metrics, feedback)
- [ ] Document exactly what you observe
- [ ] Note any contradictions
- [ ] Identify patterns (60%+ frequency)

### **Step 2: Question Surface Explanations**
- [ ] What's the obvious answer?
- [ ] Why might that be wrong?
- [ ] What evidence would contradict this?
- [ ] What am I assuming?

### **Step 3: Dig Deeper**
- [ ] Ask "Why?" 3-5 times
- [ ] Disaggregate data (look at segments)
- [ ] Look for contradictions
- [ ] Find root causes

### **Step 4: Generate Hypotheses**
- [ ] What explains all observations?
- [ ] What's the deeper pattern?
- [ ] What insight would change how we act?
- [ ] Create 2-3 competing hypotheses

### **Step 5: Test Hypotheses**
- [ ] Which hypothesis has best evidence?
- [ ] Are there gaps in evidence?
- [ ] What would prove/disprove each?
- [ ] Can I gather more evidence?

### **Step 6: Form Insight**
- [ ] What's the real insight (not surface observation)?
- [ ] How does this change understanding?
- [ ] What action would this suggest?
- [ ] Is this actionable? Surprising?

### **Step 7: Validate & Communicate**
- [ ] Does insight pass logic check?
- [ ] Get second opinion
- [ ] Communicate clearly to stakeholders
- [ ] Recommend implications/actions

---

## Characteristics of Good Insights

**✅ Good Insights**:
- Non-obvious (not what everyone assumes)
- Actionable (suggests what to do differently)
- Grounded (supported by evidence)
- Unifying (explains multiple observations)
- Surprising (changes how you think)

**❌ Not Insights**:
- ❌ "Users want more features" (too obvious)
- ❌ "Sales are up" (observation, not insight)
- ❌ "We need better UX" (too vague, not actionable)
- ❌ Unsupported theories (interesting but no evidence)

---

## Common Insight Extraction Mistakes

❌ **Stopping Too Early**
```
Pattern: "50% of users abandon at step X"
Premature insight: "Step X is confusing"
Real insight: "Step X is confusing for non-technical users,
             but experts use it fine"
Fix: Segment the analysis
```

❌ **Over-Generalizing**
```
Observation: "Enterprise customers love feature X"
Wrong insight: "Everyone wants feature X"
Real insight: "Enterprise has specific use case for X,
             SMB has different needs"
Fix: Don't extrapolate across segments
```

❌ **Ignoring Contradictions**
```
Finding: "Users say they want feature A"
Data: "Nobody uses feature A when they have it"
Ignored: Contradiction
Mistake: Build feature A nobody uses
Fix: Investigate contradiction
```

---

## Tools & Templates

- 📋 **Insight Extraction Template**: `assets/insight-extraction-template.md`
- 📋 **Why Ladder Worksheet**: `assets/why-ladder-template.md`
- 📋 **Dichotomy Resolution**: `assets/dichotomy-template.md`
- 📋 **Segment Deep-Dive Analysis**: `assets/segment-analysis-template.md`
- 📋 **Hypothesis Testing Framework**: `assets/hypothesis-test-template.md`

---

## Usage Examples

```
/insight-extraction "interview-data" "Why do users abandon at checkout?"
/insight-extraction "metrics-dashboard" "What's driving churn increase?"
/insight-extraction "customer-feedback" "What's the real problem behind complaints?"
```

---

## BA Standards & References

Based on:
- **Root Cause Analysis**: Finding underlying problems
- **Systems Thinking**: Understanding interconnected factors
- **Ethnography**: Deeper understanding of human behavior
- **Abductive Reasoning**: Forming best explanations from evidence

**Detailed Frameworks**:
- 📚 `references/why-analysis.md` - Going deep with repeated "why" questions
- 📚 `references/dichotomy-resolution.md` - Resolving contradictory findings
- 📚 `references/hypothesis-formation.md` - Creating competing explanations
- 📚 `references/evidence-evaluation.md` - Assessing quality of supporting evidence
- 📚 `references/insight-characteristics.md` - What makes insight valuable vs obvious
