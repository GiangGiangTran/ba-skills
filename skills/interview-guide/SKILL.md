---
name: interview-guide
description: "Create structured interview guides and plans - define interview objectives, develop question frameworks, prepare for effective user research. Use when planning user interviews, validating assumptions, or conducting product discovery interviews."
allowed-tools: Write
user-invocable: true
argument-hint: [interview-type] [target-audience]
---

# Interview Guide Creator

Create structured interview guides for effective user research and discovery interviews.

## 5 Interview Types

| Type | Goal | Duration | When to Use |
|------|------|----------|------------|
| **Problem Discovery** | Understand user problems | 45-60 min | Early stage, validating problem |
| **Solution Validation** | Test proposed solution | 30-45 min | After prototype/wireframes |
| **Deep Dive** | Deeply understand workflows | 60-90 min | Building personas |
| **Competitive** | Understand competitor usage | 30-45 min | Market research |
| **Feature Validation** | Validate specific features | 20-30 min | Before building features |

**See references/interview-types-detailed.md for complete descriptions**

---

## Question Frameworks

**Framework 1: 5 Whys**
- Find root cause by asking "Why?" 5 times
- Dig deeper to real underlying problem

**Framework 2: Jobs-to-be-Done (JTBD)**
- Understand what job user is trying to accomplish
- Focus on situation → job → obstacles → current solution → desired outcome

**Framework 3: SMART Goals**
- Specific, Measurable, Achievable, Relevant, Time-bound
- Define measurable success criteria

**Framework 4: Open vs Closed Questions**
- 80% open-ended (get detailed answers)
- 20% closed (get specific answers)

**See references/question-frameworks.md for detailed explanations**

---

## Interview Structure

### 1. Opening (5 min)
```
Thanks for taking time. I'm researching [topic].
Your feedback is valuable. This takes ~X minutes.
I'll take notes/record - OK with you?
```

### 2. Warm-up Questions (5 min)
- "What's your role/title?"
- "How long in this position?"
- "What does a typical day look like?"

### 3. Core Questions (25-35 min)
- By interview type (see templates)
- Mostly open-ended questions
- Follow-ups: "Tell me more...", "Example?"

### 4. Validation (5 min)
- Hypothesis testing questions
- Importance scale questions
- Solution feedback

### 5. Closing (5 min)
```
Anything else to share?
Can I follow up with you?
Interested in trying beta?
```

---

## Interview Best Practices

✅ **DO**:
- Ask open-ended questions
- Listen 80%, talk 20%
- Ask follow-ups: "Tell me more"
- Probe for specifics & examples
- Ask about past behavior
- Record with permission
- Take notes
- Look for patterns (5-8 interviews)

❌ **DON'T**:
- Ask leading questions
- Pitch your solution
- Interrupt or rush
- Argue with opinions
- Interview only similar people
- Ask hypothetical "would you" questions
- Interview too few people

---

## Post-Interview Synthesis

After 5-8 interviews, identify:

**Patterns** (50%+ of interviews):
- What appeared repeatedly?
- What's the evidence?
- What does it mean?

**Themes** (Main topics):
- What main topics emerged?
- How many mentions?
- Which most important?

**Insights** (What this means):
- Root causes discovered?
- Opportunity areas?
- Next steps?

**See references/interview-types-detailed.md for synthesis process**

---

## Usage Examples

```
/interview-guide problem-discovery "Mobile app users"
/interview-guide solution-validation "Enterprise customers"
/interview-guide deep-dive "Product managers"
/interview-guide competitive-analysis "SaaS users"
/interview-guide feature-validation "AI engineers"
```

---

## Templates & Resources

**Interview Guide Template**: `assets/interview-guide-template.md`
- Complete interview flow
- Question by section
- Post-interview notes
- Synthesis template

**Detailed References**:
- 📋 `references/interview-types-detailed.md` - All 5 types, structure, best practices
- 🔍 `references/question-frameworks.md` - Question frameworks with examples

---

## Interview Success Criteria

✓ **Successful Interview**:
- Achieved objectives
- Uncovered new insights
- Validated/invalidated assumptions
- Clear quotes for sharing findings
- Participant engaged

✗ **Unsuccessful Interview**:
- Objectives not addressed
- Wrong participant profile
- Mostly yes/no answers
- No new insights
- Unable to follow up

---

## Standards & Methods

Based on:
- **User Research**: Qualitative research best practices
- **Design Thinking**: Empathy research methods
- **Lean Startup**: Customer development interviews
- **Jobs-to-be-Done**: JTBD interview methodology
- **Continuous Discovery**: Regular interview practices
