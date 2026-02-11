# Root Cause Analysis - 5 Whys Deep Dive

## What is Root Cause Analysis?

**Goal**: Find actual underlying problem, not just symptoms.

**Why it matters**: Treating symptoms doesn't solve problems. It wastes resources and problem returns.

---

## The 5 Whys Technique

### **Basic Process**

Ask "Why?" 5 times (or until you find true root cause):

```
Level 1 - Symptom (Surface observation)
Why?
↓
Level 2 - Cause (Direct cause)
Why?
↓
Level 3 - System Cause (Why did Level 2 happen?)
Why?
↓
Level 4 - Process Cause (Why wasn't this prevented?)
Why?
↓
Level 5 - Root Cause (True underlying problem)
```

---

## Real Business Examples

### **Example 1: User Churn Issue**

```
PROBLEM: "Users are churning after 2 weeks"

Why 1: Why are users churning?
→ They're not finding value in the product

Why 2: Why not finding value?
→ They're not using the main feature

Why 3: Why not using the main feature?
→ They can't figure out how to use it

Why 4: Why can't they figure it out?
→ No onboarding guidance provided

Why 5: Why no onboarding?
→ Engineering didn't prioritize it, focus was on core features

ROOT CAUSE: Missing user onboarding experience
SOLUTION: Build onboarding flow, not just fix retention tactics
```

---

### **Example 2: Project Delay**

```
PROBLEM: "Development is 3 weeks behind schedule"

Why 1: Why behind schedule?
→ We had to rewrite a major module

Why 2: Why rewrite?
→ The original implementation had performance issues

Why 3: Why performance issues?
→ The database schema wasn't optimized for the queries we needed

Why 4: Why wasn't schema optimized?
→ Requirements changed after development started

Why 5: Why requirements changed?
→ We didn't validate with users before starting development

ROOT CAUSE: Insufficient requirement validation
SOLUTION: Validate requirements thoroughly before engineering starts
```

---

### **Example 3: High Customer Support Cost**

```
PROBLEM: "Support costs are 40% of revenue"

Why 1: Why so many support tickets?
→ Users encounter bugs frequently

Why 2: Why frequent bugs?
→ QA testing is incomplete

Why 3: Why incomplete QA?
→ QA team is understaffed

Why 4: Why understaffed?
→ We underestimated scope during planning

Why 5: Why underestimated?
→ We didn't break down requirements into test cases

ROOT CAUSE: Insufficient QA planning during requirement phase
SOLUTION: Include QA input in requirements, estimate properly
```

---

## When to Stop Asking "Why"

You've found root cause when:
- ✅ The answer points to something you can actually fix
- ✅ Multiple "Why" chains converge to same root cause
- ✅ Fixing this would prevent problem recurring
- ✅ Root cause is at boundary of your control (can't go deeper without leaving your domain)

❌ **Don't go too deep**:
- "Because people are human" - Too philosophical
- "Because the laws of physics" - Can't act on this
- "Because of the pandemic" - Can't control external events

---

## 5 Whys Best Practices

### **DO:**
1. ✅ Ask "Why?" not "What?" - Find cause, not details
2. ✅ Go to gemba (actual place problem occurs) - Talk to people doing work
3. ✅ Involve actual doers - They know constraints/workarounds
4. ✅ Be specific - "Bug in report" → "Report calculations wrong when user selects 3 date ranges"
5. ✅ Test conclusions - Can you actually fix it? Does it solve problem?

### **DON'T:**
1. ❌ Blame people - "Because developer was careless" → Go deeper
2. ❌ Stop too early - After 2 Whys with complex problem
3. ❌ Assume single cause - Problems often have multiple root causes
4. ❌ Rush - Take time to think, don't jump to first answer
5. ❌ Ignore data - Use facts, not hunches

---

## Real-Time Facilitation Tips

**When you get a vague answer:**
```
Manager: "We're slow because of technical debt"
You: "What specific part of technical debt?"
    → "Database queries too slow"
    → "We're missing indexes on frequent queries"
    (More specific and actionable)
```

**When you get human blame:**
```
Person A: "Person B didn't complete the task"
You: "What prevented Person B from completing?"
    → "They didn't have the information they needed"
    → "No requirements were documented"
    → "Requirements process was broken"
    (Moves from blame to system problem)
```

**When chains diverge:**
```
You: "Why two different root causes for same problem?"
    → Both are valid, both need fixing
    → Prioritize by impact and effort
    → Example: 60% from cause A, 40% from cause B
               Fix A first (bigger impact)
```

---

## 5 Whys for Different Problem Types

### **Performance Problem**
```
"System is slow"
→ Why? "Database queries slow"
→ Why? "Missing indexes"
→ Why? "No performance testing before launch"
→ Why? "Performance wasn't a stated requirement"
→ Why? "BA didn't ask about performance during discovery"

Solution: Include performance in requirements questions
```

### **Quality Problem**
```
"High defect rate"
→ Why? "Features not fully tested"
→ Why? "QA doesn't have time"
→ Why? "QA gets requirements late"
→ Why? "Requirements shared after dev starts"
→ Why? "BA process is too slow"

Solution: Speed up BA phase, start QA planning earlier
```

### **User Adoption Problem**
```
"Users not adopting new feature"
→ Why? "They don't know how to use it"
→ Why? "No training provided"
→ Why? "Training wasn't in scope"
→ Why? "User enablement wasn't planned"
→ Why? "BA didn't consider adoption in requirements"

Solution: Include change management in BA discovery
```

---

## Documenting Root Cause Analysis

**Template**:
```
PROBLEM STATEMENT:
[What issue are we solving?]

ROOT CAUSE ANALYSIS (5 Whys):

Why 1: [First why]
      → [Answer pointing to next level]

Why 2: [Second why]
      → [Answer pointing to next level]

Why 3: [Third why]
      → [Answer pointing to next level]

Why 4: [Fourth why]
      → [Answer pointing to next level]

Why 5: [Fifth why]
      → [Answer = ROOT CAUSE]

ROOT CAUSE:
[Clear statement of actual underlying problem]

RECOMMENDED SOLUTION:
[How to fix root cause, not just symptom]

EXPECTED OUTCOME:
[If we fix this, what changes?]

EFFORT TO FIX:
[How much work? What's involved?]
```

---

## Common Mistakes & How to Fix

### ❌ Mistake: Stopping at symptom
```
Problem: "Users don't like the interface"
Why: "UI is hard to use"
STOP ← Too early!

Better approach:
Why: "UI is hard to use"
Why: "No user testing during design"
Why: "User research wasn't included"
Why: "BA didn't plan user feedback"
ROOT CAUSE: Design process skipped user validation
```

### ❌ Mistake: Blaming people
```
"The developer made a mistake"
STOP ← Ends conversation

Better approach:
"What prevented mistake from being caught?"
→ "No code review"
→ "Code review not in process"
ROOT CAUSE: Missing quality process, not person
```

### ❌ Mistake: Multiple unrelated causes
```
"Sales down due to: competition, pricing, bad UX, economy"
STOP ← Too many unrelated causes

Better approach:
For EACH symptom, do separate 5 Whys:
- Sales down in segment A? Why?
- Sales down in segment B? Why?
Each has different root cause
```

---

## Combining 5 Whys with Other Techniques

### **5 Whys + MECE Analysis**
```
Problem: "Customer satisfaction declining"

MECE breakdown:
├─ Product Quality Issues
│  └─ 5 Whys analysis
├─ Support Experience Issues
│  └─ 5 Whys analysis
└─ Pricing/Value Issues
   └─ 5 Whys analysis

Each root cause addressed separately
```

### **5 Whys + Data Analysis**
```
"Churn increased 15% last month"

5 Whys: Why are users churning?
Data Analysis: Which cohorts churning? When? From which segment?

Combine: Root cause in Segment A is X, Segment B is Y
→ Different solutions needed
```

---

## Practice Exercise

Try this problem:

```
PROBLEM: "Mobile app downloads are declining"

Do 5 Whys:
Why 1: ?
Why 2: ?
Why 3: ?
Why 4: ?
Why 5: ?

ROOT CAUSE: ?

Compare your answer with others - you may find different root causes
```

Root causes you might find:
- App store rating declined → Why? → Bad recent update → Why? → Rushed release → Why? → Poor testing → ...
- Marketing budget cut → Why? → Company saving costs → Why? → Revenue down → Why? → Market saturation → ...
- Competitor launched better app → Why? → We underestimated competitor → Why? → No competitive analysis → ...
