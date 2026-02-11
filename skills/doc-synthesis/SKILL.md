---
name: doc-synthesis
description: "Master document synthesis - summarize information clearly, extract key insights, create executive summaries, distill complex documents. Use for condensing information for different audiences and creating actionable summaries."
allowed-tools: Read, Write
context: fork
agent: Explore
argument-hint: [document-path] [audience-type]
user-invocable: true
---

# Document Synthesis for BA

Summarize without losing the meaning. Extract insights, not just facts.

## What is Document Synthesis?

**Definition**: Process of reading complex information, identifying key points, and presenting them clearly and concisely for specific audiences.

**Why it matters**:
- Too much information: Team overwhelmed by details
- Wrong level of detail: Executive sees 50-page doc they don't have time for
- Lost insights: Key finding buried in 100 pages
- Misunderstanding: Reader doesn't grasp the real message

**When to Use**:
- ✅ Condensing research findings (100 pages → 2-page summary)
- ✅ Creating executive summaries (details → key points)
- ✅ Translating for audiences (technical → business language)
- ✅ Extracting action items (document → what to do next)
- ✅ Combining multiple sources (5 documents → 1 coherent summary)

---

## 3 Synthesis Levels

### **Level 1: Executive Summary (2-3 pages)**

For executives who need to decide, not understand details.

**Structure**:
```
1. SITUATION (1 paragraph)
   What's the context? Why are we doing this?

2. KEY FINDINGS (3-5 bullet points)
   What did we learn? What's most important?

3. RECOMMENDATION (1-2 sentences)
   What should we do?

4. BUSINESS IMPACT (1-2 metrics)
   Why does this matter? What's the impact?

5. NEXT STEPS (2-3 items)
   What happens next? Who decides when?
```

**Example**:
```
SITUATION:
Researched customer adoption barriers for new mobile app feature.
Conducted 12 user interviews over 3 weeks.

KEY FINDINGS:
- 85% of users want mobile feature
- 45% say setup is "too complicated"
- Feature would save ~3 hours per week
- Competitors already have similar feature

RECOMMENDATION:
Build mobile feature, but focus on simpler setup process.

BUSINESS IMPACT:
- $200K revenue potential (if 10% adoption)
- Differentiation vs competitor (easier setup)
- Expected 2-week effort

NEXT STEPS:
1. Design simple setup flow (this week)
2. Engineering feasibility review (next week)
3. Kickoff meeting to proceed (date TBD)
```

---

### **Level 2: Detailed Summary (5-10 pages)**

For teams who need to understand the work.

**Structure**:
```
1. BACKGROUND
   Context, why this matters, what we were trying to find

2. METHODOLOGY
   How did we do the work? Who did we talk to?

3. KEY FINDINGS (with supporting detail)
   Finding 1: [Title] → Evidence + quote + implication
   Finding 2: [Title] → Evidence + quote + implication
   Finding 3: [Title] → Evidence + quote + implication

4. RECOMMENDATIONS
   Recommendation 1: [What] → Why → Expected impact
   Recommendation 2: [What] → Why → Expected impact

5. NEXT STEPS
   Timeline, owner, decision needed
```

---

### **Level 3: Complete Report (20-50 pages)**

For those doing deep work on the topic.

**Includes**:
- Full methodology
- All findings with evidence
- Detailed recommendations with trade-offs
- Appendices with supporting data
- References/sources

---

## 5 Synthesis Techniques

### **1. The Inverted Pyramid**

Start with conclusion, then support with details.

```
❌ WRONG:
"We conducted interviews with 12 users. First user said...
Second user said... Third user said... Overall conclusion..."
(Conclusion at the end, buried under details)

✅ RIGHT:
"70% of users want mobile feature, but 50% find setup complex.
Here's the evidence:
- Interview 1: User said "It's confusing"
- Interview 2: User said "Setup takes too long"
- Interview 3: User said "Instructions unclear"
"
(Conclusion first, evidence follows)
```

---

### **2. The Rule of 3**

Limit to 3 main points per section.

```
Synthesis Rule of 3:
- 3 key findings (not 10)
- 3 recommendations (not 7)
- 3 next steps (not 5)

Why?
- People remember 3 things
- More than 3 = overwhelm
- Forces prioritization (what's really important?)
```

---

### **3. The Headline Method**

Each section starts with conclusion, not introduction.

```
❌ WRONG (Journalistic):
Heading: "User Feedback"
Content: "We asked users about mobile features. Most were interested.
Some thought it was difficult..."

✅ RIGHT (Strategic):
Heading: "Users Want Mobile, But Demand Easy Setup"
Content: "70% of users expressed interest in mobile features,
but 50% cited setup complexity as barrier..."
```

---

### **4. Supporting Evidence Pyramid**

Use evidence to back up findings.

```
Finding: "Setup is too complex for users"

Evidence Pyramid:
1. Quantitative: "50% of users cited complexity" (strongest)
2. Direct quotes: "It was confusing to set up" (compelling)
3. Behavioral: "Users abandoned at step 3" (supportive)
4. Inference: "Complex setup suggests UX problem" (weakest)

Use strongest evidence first, weakest as supporting
```

---

### **5. Audience Translation**

Translate across domains.

```
RESEARCH FINDING:
"Analysis of user event logs shows 40% of users abandon
after 3rd step, correlating with password reset failures (r=0.82)"

TRANSLATE FOR:

Executive: "Half our users quit during setup because the
password step is broken. Simple fix saves us lots of customers."

Engineer: "Users abandon setup when password validation fails.
Needs investigation on pwd requirements vs error messaging."

User: "The password setup is confusing and makes you quit.
We're fixing it so it's easier."

Each audience gets same insight in their language.
```

---

## Synthesis Process (5 Steps)

### **Step 1: Read & Identify Key Points**
- [ ] Read entire document
- [ ] Mark key sentences/findings
- [ ] Identify 3-5 main themes
- [ ] Note surprising insights

### **Step 2: Extract Evidence**
- [ ] For each key finding, find supporting evidence
- [ ] Get direct quotes
- [ ] Note data/statistics
- [ ] Document sources

### **Step 3: Organize Logically**
- [ ] Start with conclusion
- [ ] Group supporting evidence
- [ ] Remove redundancy
- [ ] Check logic flow

### **Step 4: Write Simply**
- [ ] Use clear headings
- [ ] Short sentences (under 20 words)
- [ ] Active voice
- [ ] Remove jargon

### **Step 5: Verify Accuracy**
- [ ] Check facts against original
- [ ] Verify quotes are exact
- [ ] Confirm interpretation is fair
- [ ] Get feedback from original author

---

## Tools & Templates

- 📋 **Executive Summary Template**: `assets/executive-summary-template.md`
- 📋 **Detailed Summary Template**: `assets/detailed-summary-template.md`
- 📋 **Synthesis Checklist**: `assets/synthesis-checklist.md`
- 📋 **Evidence Extraction Template**: `assets/evidence-extraction-template.md`
- 📋 **Translation by Audience**: `assets/audience-translation-template.md`

---

## Usage Examples

```
/doc-synthesis "research-report.md" "executive"
/doc-synthesis "interview-transcript.md" "team"
/doc-synthesis "technical-specification.md" "stakeholder"
```

---

## BA Standards & References

Based on:
- **Technical Writing**: Clear, concise communication
- **Information Architecture**: Organizing information logically
- **Audience Analysis**: Tailoring content to audience
- **Executive Communication**: Distilling to essentials

**Detailed Frameworks**:
- 📚 `references/summary-levels.md` - Executive vs detailed vs complete summaries
- 📚 `references/synthesis-techniques.md` - Inverted pyramid, rule of 3, headlines
- 📚 `references/evidence-hierarchy.md` - Supporting findings with evidence
- 📚 `references/clarity-principles.md` - Clear writing techniques
- 📚 `references/audience-tailoring.md` - Translating for different audiences
