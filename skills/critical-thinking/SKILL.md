---
name: critical-thinking
description: "Develop logical analysis skills - break down complex problems, identify root causes, test assumptions, evaluate evidence quality, build sound arguments. Use for problem analysis, decision-making, and validating business logic."
allowed-tools: Write
metadata:
  version: "2.0"
  claude-code:
    context: fork
    agent: Explore
    user-invocable: true
---

# Critical Thinking for BA

Master the BA's core skill: analyzing problems logically and rigorously.

## What is Critical Thinking for BA?

**Definition**: Disciplined process of actively analyzing, evaluating, and synthesizing information to reach well-reasoned conclusions and identify root causes.

**When to Use**:
- ✅ Analyzing complex business problems
- ✅ Breaking down vague requirements into specific issues
- ✅ Testing assumptions before major decisions
- ✅ Evaluating competing proposals fairly
- ✅ Identifying root causes vs symptoms
- ✅ Building logical arguments for stakeholders

---

## 5 Core Thinking Frameworks

### **1. Root Cause Analysis (5 Whys)**

Dig deeper to find real cause, not symptoms.

**Process**:
```
Problem: "Users complaining about slow system"
Why 1: Why is system slow?
      → Database queries taking too long
Why 2: Why are queries slow?
      → Missing indexes on common queries
Why 3: Why missing indexes?
      → Database optimization not prioritized
Why 4: Why not prioritized?
      → Performance metrics not tracked
Why 5: Why not tracked?
      → No performance SLA defined

Root Cause: Missing performance SLA and monitoring
```

**When**: When initial problem seems obvious but may not be the real issue

**See**: `references/root-cause-analysis.md`

---

### **2. Logical Argumentation (Toulmin Model)**

Build arguments that stakeholders can follow and challenge.

**Structure**:
```
CLAIM: "We should build feature X"

EVIDENCE:
- 60% of users requested this
- Competitors have it
- User testing shows $50K annual value

WARRANT (Why evidence supports claim):
- User research is reliable indicator
- Competitor feature validates market need
- Financial impact is material

COUNTER-ARGUMENT:
- Effort: 3 months development
- Risk: Integration complexity

CONCLUSION:
- Benefits outweigh costs
- Recommend proceeding
```

**When**: Presenting proposals to decision-makers

**See**: `references/logical-argumentation.md`

---

### **3. Assumption Testing (Lean Startup)**

Validate critical assumptions before committing resources.

**Framework**:
```
Business Model Assumption: "Users will pay $50/month"

Test Method: Interview 20 users
Critical Success Factors:
- 70%+ express interest
- 50%+ willing to commit
- Average acceptable price: $40-60

Results:
- 75% interested ✓
- 45% willing to commit ✗
- Average acceptable: $30-40 ✗

Decision: Price assumption invalid, need adjustment
```

**When**: Major decisions depend on unproven assumptions

**See**: `references/assumption-testing.md`

---

### **4. MECE Analysis (Mutually Exclusive, Collectively Exhaustive)**

Organize information clearly so nothing is missed.

**Example**:
```
Problem: "User engagement is declining"

MECE breakdown:
├─ User Segments
│  ├─ New users (0-30 days) ← Check separately
│  ├─ Active users (31+ days)
│  └─ Churned users
│
├─ Engagement Metrics
│  ├─ Frequency (sessions/week)
│  ├─ Duration (time per session)
│  └─ Feature usage
│
└─ Decline Period
   ├─ Last month
   ├─ Last quarter
   └─ Last year
```

**When**: Analyzing large problems systematically

**See**: `references/mece-analysis.md`

---

### **5. Bayesian Thinking (Probability & Evidence)**

Update beliefs as you gather evidence.

**Framework**:
```
Prior Belief: "Feature X will be adopted by 30% of users"
(Based on similar features)

Evidence 1: User interviews show 60% expressing interest
→ Update: Maybe 40-50% adoption likely

Evidence 2: Competitor adoption is 20%
→ Update: Maybe 30-35% adoption

Evidence 3: User testing shows difficult UX
→ Update: Back to 25-30% adoption

Final Assessment: 28% adoption likely
(More accurate than initial guess)
```

**When**: Making decisions with incomplete information

**See**: `references/bayesian-thinking.md`

---

## Critical Thinking Process (8 Steps)

1. **Define Problem Clearly**
   - What exactly is the problem?
   - Symptoms vs root cause?
   - Scope and boundaries?

2. **Gather Evidence**
   - What data exists?
   - What's missing?
   - Is source reliable?

3. **Identify Assumptions**
   - What are we assuming?
   - Which assumptions critical?
   - Which unvalidated?

4. **Analyze Alternatives**
   - What other explanations possible?
   - What other solutions available?
   - What trade-offs for each?

5. **Evaluate Logic**
   - Do conclusions follow from evidence?
   - Any logical fallacies?
   - Any missing steps?

6. **Test Conclusions**
   - How would we know if right?
   - What would prove wrong?
   - What gaps remain?

7. **Document Reasoning**
   - Why this conclusion?
   - What evidence supports it?
   - What's uncertain?

8. **Communicate Decision**
   - Clear to stakeholders?
   - Can they challenge reasoning?
   - Buy-in achieved?

---

## Common Thinking Pitfalls to Avoid

❌ **Confirmation Bias**: Only seeking evidence that supports your view
✅ **Fix**: Actively search for contradicting evidence

❌ **Anchoring Bias**: First number heard becomes reference point
✅ **Fix**: Generate estimates independently before comparing

❌ **False Cause**: Assuming A caused B because they happened together
✅ **Fix**: Use 5 Whys to find actual mechanism

❌ **Sunk Cost Fallacy**: Continuing because invested so much already
✅ **Fix**: Evaluate only future costs/benefits, not past investment

❌ **False Dichotomy**: "Either A or B" when other options exist
✅ **Fix**: Use MECE to find all alternatives

❌ **Argument from Authority**: "Expert says so, therefore true"
✅ **Fix**: Evaluate evidence, not authority

---

## Tools & Templates

- 📋 **5 Whys Analysis Template**: `assets/5-whys-template.md`
- 📋 **Assumption Testing Template**: `assets/assumption-test-template.md`
- 📋 **MECE Analysis Template**: `assets/mece-template.md`
- 📋 **Logical Argument Template**: `assets/argument-template.md`

---

## Usage Examples

```
/critical-thinking "Sales declining but product reviews are positive"
/critical-thinking "Should we build mobile app or web app first?"
/critical-thinking "Users report feature X is confusing - cause unclear"
```

---

## BA Standards & References

Based on:
- **Critical Thinking Skills**: Bloom's Taxonomy (Analyze, Evaluate, Create)
- **Root Cause Analysis**: Lean Startup methodology
- **Logic & Argumentation**: Toulmin Model
- **Problem Analysis**: BABOK - Problem Analysis & Root Cause Analysis

**Detailed Frameworks**:
- 📚 `references/root-cause-analysis.md` - 5 Whys with business examples
- 📚 `references/logical-argumentation.md` - Building convincing arguments
- 📚 `references/assumption-testing.md` - Validating risky assumptions
- 📚 `references/mece-analysis.md` - Organizing complex problems
- 📚 `references/bayesian-thinking.md` - Probabilistic reasoning
