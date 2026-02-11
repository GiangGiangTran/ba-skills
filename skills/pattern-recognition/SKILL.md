---
name: pattern-recognition
description: "Master pattern recognition - identify recurring themes, outliers, trends, inconsistencies across documents and data. Use for extracting meaningful patterns from interviews, feedback, and data sets."
allowed-tools: Read, Grep
metadata:
  version: "2.0"
  claude-code:
    context: fork
    agent: Explore
    user-invocable: true
---

# Pattern Recognition for BA

What do the numbers show? What's really happening?

## What is Pattern Recognition?

**Definition**: Identifying recurring themes, anomalies, and trends across data sets, interviews, or documents - finding the signal in noise.

**Why it matters**:
- Hidden patterns: One-off observation vs actual trend
- Outlier detection: Which observations are unusual/important?
- Data-driven insights: "Many users said it" vs "A few users said it"
- Contradiction detection: "Users love feature X" but "Nobody uses feature X"
- Trend identification: Direction of change (improving/declining)

**When to Use**:
- ✅ Analyzing 5-8 user interviews (find common themes)
- ✅ Reviewing customer feedback (what's most mentioned?)
- ✅ Analyzing data sets (what's the trend?)
- ✅ Finding inconsistencies (why do findings conflict?)
- ✅ Identifying root causes (what's the common factor?)

---

## 3 Pattern Types

### **Type 1: Frequency Patterns (The 60% Rule)**

What appeared in 60%+ of observations?

```
Interview Finding: "Users find setup confusing"

Count appearances:
Interview 1: User said "setup confusing" ✓
Interview 2: User said "takes too long" ✓
Interview 3: User said "confusing" ✓
Interview 4: User completed easily ✗
Interview 5: User said "confusing" ✓
Interview 6: User said "unclear" ✓
Interview 7: User completed in 5 min ✗
Interview 8: User said "complex" ✓

Count: 6 out of 8 mentioned confusion = 75%
→ PATTERN FOUND (60%+ threshold)

Conclusion: Setup confusion is widespread issue,
            not just one user's problem
```

---

### **Type 2: Contradiction Patterns**

What conflicts with other observations?

```
Observation 1: "Users love the dashboard feature"
- Quote 1: "Dashboard gives me visibility I need"
- Quote 2: "Dashboard is my favorite feature"

But Data Shows: Dashboard usage is only 15% of users
                80% never open dashboard

CONTRADICTION FOUND!
→ Investigation: Maybe users love it when they use it,
                 but most don't discover it or use it
                 (awareness/discoverability problem, not feature problem)
```

---

### **Type 3: Outlier Patterns**

What's unusual or stands out?

```
Sales Data:
- Sales rep A: $500K revenue (typical)
- Sales rep B: $520K revenue (typical)
- Sales rep C: $850K revenue (outlier - 60% higher!)
- Sales rep D: $480K revenue (typical)

Question: Why is Sales rep C so much higher?

Investigation:
→ Rep C focuses on Enterprise segment (higher deal size)
→ Other reps focus on SMB (smaller deals)

Insight: Enterprise segment is 60% higher value
→ Strategy implication: Shift towards Enterprise focus?
```

---

## 5 Pattern Recognition Techniques

### **1. Frequency Analysis**

Count how many times something appears.

```
Process:
1. Review all interviews/data
2. Mark each instance of observation
3. Count total instances
4. Divide by total observations
5. Calculate percentage

Rules:
- Pattern threshold: 60%+ = significant pattern
- 30-60% = interesting trend, but not consensus
- <30% = minority view, document but don't prioritize

Example:
Pain point: "No real-time collaboration"
User 1: Mentioned ✓
User 2: Mentioned ✓
User 3: Mentioned ✓
User 4: Not mentioned ✗
User 5: Mentioned ✓
User 6: Mentioned ✓

5 of 6 mentioned = 83% → STRONG PATTERN
```

---

### **2. Segmentation Analysis**

Does pattern appear in specific segments?

```
Finding: "Users frustrated with performance"

Segment analysis:
- Enterprise users: 80% frustrated with performance
- Mid-market users: 40% frustrated with performance
- SMB users: 20% frustrated with performance

Insight: Performance is enterprise problem primarily
         Not universal issue, segment-specific
→ Design: Enterprise scalability first, SMB later
```

---

### **3. Timeline Analysis**

Does pattern change over time?

```
User churn by cohort:

Cohort A (Jan 2026): 5% monthly churn
Cohort B (Feb 2026): 6% monthly churn
Cohort C (Mar 2026): 12% monthly churn
Cohort D (Apr 2026): 15% monthly churn

Trend: Churn increasing for newer cohorts
→ Insight: Something is getting worse (product, onboarding, market fit)
→ Action: Investigate what changed
```

---

### **4. Correlation Analysis**

Do two things happen together?

```
Observation: Users with low onboarding completion have high churn

Data:
Users completing <3 steps: 70% churn
Users completing 3-5 steps: 40% churn
Users completing all steps: 5% churn

Correlation Found: Onboarding completion → Churn reduction
→ Insight: Completing onboarding indicates product fit
→ Action: Make onboarding better to improve retention
```

---

### **5. Root Cause Analysis via Patterns**

Use patterns to trace to cause.

```
Pattern: "Users abandon at step 3"

Investigation:
Interview review: 6 of 8 users mentioned "password step"
→ Deeper: When asked why, got:
   - "Requirements unclear"
   - "Password validation error"
   - "Confusing message"

Pattern: All mention password step
         All have confusion/clarity issues
→ ROOT CAUSE: Password UX is broken
→ Solution: Redesign password step for clarity
```

---

## Common Pattern Analysis Mistakes

❌ **Small Sample Size**
```
Problem: "All 2 users said feature X is broken"
Issue: 2 users is too small, could be coincidence
Fix: Need 5-8 observations minimum to establish pattern
```

❌ **Confirmation Bias**
```
Problem: "I expected users to want feature A, so I count evidence
          supporting A and ignore evidence for B"
Fix: Count ALL observations objectively, not just ones you expected
```

❌ **Selection Bias**
```
Problem: "Interviewed only early adopters, they love feature"
Issue: Early adopters ≠ typical users, they have different needs
Fix: Interview diverse user segments
```

❌ **Mixing Unrelated Observations**
```
Problem: "Users mentioned: slow performance, confusing UI, needs
         integration, wants mobile. These are 4 separate issues."
Issue: Looking like one big pattern when they're separate
Fix: Categorize observations into distinct patterns
```

---

## Pattern Recognition Workflow

### **Step 1: Prepare Data**
- [ ] Gather all observations (interviews, feedback, metrics)
- [ ] Organize in consistent format
- [ ] Ensure sample size adequate (5-8+ minimum)

### **Step 2: Code Observations**
- [ ] Read each observation
- [ ] Identify key themes/topics
- [ ] Label/tag by theme
- [ ] Note exact quote/evidence

### **Step 3: Tabulate**
- [ ] Count frequency by theme
- [ ] Calculate percentages
- [ ] Identify patterns (60%+ threshold)
- [ ] Spot contradictions

### **Step 4: Investigate**
- [ ] For each pattern, ask "Why?"
- [ ] Look for sub-patterns (is it segment-specific?)
- [ ] Compare with other data (does it correlate?)
- [ ] Identify root causes

### **Step 5: Document**
- [ ] List patterns found
- [ ] Evidence for each (quotes, percentages)
- [ ] Implications/recommendations
- [ ] Remaining questions

---

## Tools & Templates

- 📋 **Pattern Analysis Template**: `assets/pattern-analysis-template.md`
- 📋 **Frequency Counting Worksheet**: `assets/frequency-template.md`
- 📋 **Coding Framework**: `assets/coding-framework-template.md`
- 📋 **Trend Analysis Template**: `assets/trend-analysis-template.md`
- 📋 **Contradiction Assessment**: `assets/contradiction-template.md`

---

## Usage Examples

```
/pattern-recognition "interview-transcripts" "Common pain points?"
/pattern-recognition "customer-feedback-data" "Recurring complaints?"
/pattern-recognition "usage-metrics" "What features get used most?"
```

---

## BA Standards & References

Based on:
- **Qualitative Analysis**: Coding and theme identification
- **Quantitative Analysis**: Frequency and correlation
- **Data Science**: Pattern detection, outlier analysis
- **User Research**: Thematic analysis methodology

**Detailed Frameworks**:
- 📚 `references/frequency-analysis.md` - Counting and the 60% rule
- 📚 `references/coding-framework.md` - How to code observations
- 📚 `references/theme-identification.md` - Finding main themes
- 📚 `references/outlier-detection.md` - Finding and investigating anomalies
- 📚 `references/correlation-causation.md` - When patterns are related vs coincidence
