---
name: interview-guide
description: "Create structured interview guides and plans - define interview objectives, develop question frameworks, prepare for effective user research. Use when planning user interviews, validating assumptions, or conducting product discovery interviews."
allowed-tools: Write
user-invocable: true
argument-hint: [interview-type] [target-audience]
---

# Interview Guide Creator

Create structured interview guides for effective user research and discovery interviews.

## Interview Types

### Type 1: Problem Discovery Interview
**Goal**: Understand what problems users face and their current solutions

**When to use**: Early stage, validating problem hypothesis

**Key questions**:
- What problems do you face with [topic]?
- Tell me about the last time you encountered this problem
- How do you currently handle it?
- What's frustrating about your current approach?
- What would an ideal solution look like?

**Duration**: 45-60 minutes

---

### Type 2: Solution Validation Interview
**Goal**: Test proposed solution with users, gather feedback

**When to use**: After creating prototype or wireframes

**Key questions**:
- What do you think of this approach?
- Does this solve your problem?
- What would you change?
- Would you use this? Why/why not?
- What's missing?

**Duration**: 30-45 minutes

---

### Type 3: User Research Deep Dive
**Goal**: Deeply understand user needs, workflows, and context

**When to use**: Building personas, understanding complex workflows

**Key questions**:
- Walk me through how you do [task]
- What's the context? (When, where, why)
- What challenges do you face?
- How important is this to you? (1-10 scale)
- What's your ideal outcome?

**Duration**: 60-90 minutes

---

### Type 4: Competitive User Interview
**Goal**: Understand how users currently use competitor products

**When to use**: Market research, competitive analysis

**Key questions**:
- Why did you choose [competitor product]?
- How do you use it?
- What works well for you?
- What frustrates you?
- What would make you switch?

**Duration**: 30-45 minutes

---

### Type 5: Feature Validation Interview
**Goal**: Validate specific features or approaches

**When to use**: Before building new features

**Key questions**:
- How important is [feature] to you? (1-10)
- How would you use [feature]?
- What would make it more valuable?
- Would you pay for [feature]?
- How often would you use it?

**Duration**: 20-30 minutes

---

## Question Development Frameworks

### Framework 1: 5 Whys (Find Root Cause)

**Purpose**: Dig deeper to find the real cause of problems

**Process**:
```
Question 1: "What problem do you face?"
→ User: "I can't track all my tasks"

Question 2: "Why is that difficult?"
→ User: "I use multiple tools"

Question 3: "Why do you use multiple tools?"
→ User: "Each tool does one thing well"

Question 4: "Why don't you consolidate?"
→ User: "No single tool has all features I need"

Question 5: "Why is that important?"
→ User: "Switching between tools costs time"

Root Cause: No unified tool exists for their workflow
```

**When to use**: When you want to understand the underlying problem

---

### Framework 2: Jobs-to-be-Done (JTBD)

**Purpose**: Understand what "job" users are trying to accomplish

**Structure**:
```
Situation: [Context - when, where, why]
Job: [What they're trying to accomplish]
Struggling: [Current obstacles]
Using: [Current workaround/solution]
Desired Outcome: [What success looks like]
```

**Example Interview Flow**:
```
"Tell me about a time you needed to..."
→ Understand the situation

"What were you trying to accomplish?"
→ Identify the job

"What made it difficult?"
→ Find obstacles

"How did you solve it?"
→ Learn current approach

"What would make it easier?"
→ Understand desired outcome
```

**When to use**: Understanding user motivations and goals

---

### Framework 3: SMART Goal Setting

**Purpose**: Define measurable success for product/feature

**Structure**:
```
Specific: Clear definition of what we're solving
→ "Reduce time to complete X task"

Measurable: Quantifiable metric
→ "From 30 minutes to 10 minutes"

Achievable: Realistic with available resources
→ "Within 3 months of development"

Relevant: Matters to business and users
→ "Improves user satisfaction by 40%"

Time-bound: Clear deadline
→ "Launch by end of Q1 2026"
```

---

### Framework 4: Open vs Closed Questions

**Open Questions** (Get detailed answers):
- "Tell me about..."
- "How do you..."
- "What's your experience with..."
- "Why do you...?"

**Closed Questions** (Get specific answers):
- "Do you use X?" (Yes/No)
- "On a scale of 1-10, how important is X?"
- "Which tool do you prefer?" (A, B, or C)

**Balance**: Mostly open (80%) with some closed (20%) for specificity

---

## Interview Structure

### Pre-Interview (Before Meeting)

**Prepare**:
- [ ] Define clear objectives
- [ ] Develop question guide
- [ ] Identify target users
- [ ] Schedule 5-8 interviews (for good sample size)
- [ ] Prepare recording setup (if recording)
- [ ] Test technology (Zoom, recording, etc.)

**Interview Brief** (send to participant):
```
Interview Topic: [Brief description]
Duration: [X minutes]
Format: [Phone/Video/In-person]
What to expect: [Overview of interview flow]
No preparation needed: [They don't need to study]
```

---

### During Interview (Actual Conversation)

**Opening** (5 minutes):
```
"Thanks for taking time to chat with me.
I'm researching [topic].
Your feedback is valuable.
This should take about X minutes.
I may take notes/record - is that OK?"
```

**Main Interview** (30-40 minutes):
- Start with easy warm-up questions
- Move to discovery questions
- Ask follow-up: "Can you tell me more?"
- Listen more than you talk (80/20 rule)
- Probe for specifics, not opinions
- Avoid leading questions

**Closing** (5 minutes):
```
"Is there anything else you'd like to share?
Can I follow up if I have more questions?
Would you like to hear what we build?"
```

---

### Post-Interview (After Meeting)

**Immediately after**:
- [ ] Write summary notes
- [ ] Capture key quotes
- [ ] Note emotional tone/body language
- [ ] Highlight surprising insights
- [ ] Identify action items

**Synthesis** (After 5-8 interviews):
- [ ] Look for patterns
- [ ] Identify themes
- [ ] Capture quotes that illustrate themes
- [ ] Note disagreements (important!)
- [ ] Extract insights
- [ ] Create personas/journey maps

---

## Interview Guide Template

Create a complete interview guide with this structure:

```markdown
# Interview Guide: [Topic]

## Interview Objectives
- [Objective 1]
- [Objective 2]
- [Objective 3]

## Target Participant Profile
- Role/Title
- Experience level
- Company size
- Industry
- Other criteria

## Interview Duration
[X minutes]

## Format
[ ] Phone  [ ] Video  [ ] In-person

---

## Opening (5 minutes)

[Greeting, context, permission, timeline]

---

## Warm-up Questions (5 minutes)

[Easy questions to build rapport]
1. "What's your role at [company]?"
2. "How long have you been in this role?"
3. "What does a typical day look like?"

---

## Core Discovery Questions (25-35 minutes)

[Main questions aligned with objectives]

### Theme 1: [Theme]
1. [Question]
2. [Follow-up]
3. [Follow-up]

### Theme 2: [Theme]
1. [Question]
2. [Follow-up]

### Theme 3: [Theme]
1. [Question]

---

## Validation Questions (5 minutes)

[Specific hypothesis testing]
1. "Would you use [proposed solution]?"
2. "How important is [feature] to you?" (1-10)

---

## Closing (5 minutes)

[Final thoughts, thank you, follow-up info]
- "Anything we haven't discussed?"
- "Can I follow up with you?"
- "Would you be interested in trying beta?"

---

## Notes for Interviewer

[Tips, sensitivities, things to watch for]
- Avoid leading questions
- Listen for what they DON'T say
- Watch for emotional reactions
- Note tone, body language
```

---

## Interview Best Practices

### DO ✓
- ✓ Ask open-ended questions
- ✓ Listen more (80%) than talk (20%)
- ✓ Ask follow-up: "Tell me more"
- ✓ Probe for specifics: "Can you give an example?"
- ✓ Ask about past behavior: "Tell me about the last time..."
- ✓ Thank them for their time
- ✓ Record (with permission) for accuracy
- ✓ Take notes during and after
- ✓ Look for patterns (after 5-8 interviews)

### DON'T ✗
- ✗ Ask leading questions: "Don't you think X would be better?"
- ✗ Pitch your solution: "We're building X, what do you think?"
- ✗ Interrupt or rush them
- ✗ Argue with their opinions
- ✗ Interview only people like you
- ✗ Ask hypothetical "Would you..." questions
- ✗ Talk more than user
- ✗ Forget to take notes
- ✗ Interview too few people (need 5-8 minimum)

---

## Interview Synthesis

### After 5-8 Interviews, Synthesize:

**Patterns** (What appears in 50%+ of interviews):
```
Pattern: "Multiple users mentioned task switching friction"
Evidence: User A said X, User C said Y, User G said Z
Implication: This is a real, repeated problem
```

**Themes** (Main topics that emerged):
```
Theme 1: Problem A (mentioned in 6/8 interviews)
Theme 2: Problem B (mentioned in 4/8 interviews)
Theme 3: Desired Feature C (mentioned in 5/8 interviews)
```

**Insights** (What this means):
```
Insight 1: Users face X problem because of [root cause]
Insight 2: Current solutions are [limited because...]
Insight 3: Opportunity exists to [solve by...]
```

**Next Steps**:
```
- Create personas based on user types
- Build journey maps showing current workflow
- Define problem statement from interviews
- Test solution ideas with target users
```

---

## Interview Analysis Template

Use this template after interviews:

```markdown
# Interview Analysis Summary

## Interview Details
- Date: [Date]
- Participant: [Name/Role]
- Duration: [Time]
- Interviewer: [Name]

## Key Quotes
- "[Memorable quote]" - Participant
- "[Important quote]" - Participant

## Main Insights
1. [Insight about problem]
2. [Insight about current solution]
3. [Insight about desired outcome]

## Patterns Observed
- [Behavior/pain point observed]
- [Emotion/motivation observed]

## Action Items
- [What to follow up on]
- [What to test next]

## Confidence Level
- Problem validated: [ ] Yes [ ] No
- Solution approach: [ ] Validated [ ] Needs more research
- Ready to move forward: [ ] Yes [ ] No
```

---

## Professional Standards

Based on:
- **User Research**: Qualitative research best practices
- **Design Thinking**: Empathy research methods
- **Lean Startup**: Customer development interviews
- **Jobs-to-be-Done**: JTBD interview methodology
- **Continuous Discovery**: Regular interview practices
