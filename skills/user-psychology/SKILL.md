---
name: user-psychology
description: "Master user psychology domain - understand decision-making, cognitive biases, behavioral patterns, motivation, adoption barriers. Use for designing features users will love, reducing friction, and predicting user behavior."
allowed-tools: Write
context: fork
agent: Explore
argument-hint: [user-scenario] [optional-behavior]
user-invocable: true
---

# User Psychology for BA

People are not rational. Design for how they actually behave.

## What is User Psychology?

**Definition**: Understanding how people make decisions, what motivates them, what biases influence them, and what causes friction - the human factors in product adoption and use.

**Why it matters**:
- Features nobody uses: Built without understanding motivation
- High friction adoption: UX doesn't match how people think
- Resistance to change: Didn't anticipate psychological barriers
- Poor engagement: Doesn't align with user incentives

**When to Use**:
- ✅ Understanding why users do (or don't do) something
- ✅ Designing engagement and motivation
- ✅ Reducing adoption friction
- ✅ Managing change resistance
- ✅ Predicting user behavior

---

## 5 Core Psychology Concepts

### **1. Cognitive Biases: Why People Make Decisions They Do**

People are predictably irrational.

```
CONFIRMATION BIAS:
People seek evidence supporting their existing belief
Impact: Users ignore warnings, skip steps they think unnecessary
Fix: Make required steps impossible to skip, not just recommended

LOSS AVERSION:
People fear losing what they have 2x more than gaining equivalent
Impact: Users resistant to change even if beneficial
Fix: Frame as "keep what's good, improve problem areas"

STATUS QUO BIAS:
People prefer things to stay the same
Impact: Users reluctant to adopt new features/products
Fix: Make switching easy (migration tools, training)

ANCHORING:
First number heard becomes reference point
Impact: First price offered anchors negotiation
Fix: Present realistic prices first

SUNK COST FALLACY:
People continue because they invested so much
Impact: Users reluctant to switch even to better solution
Fix: Reduce switching costs

CHOICE OVERLOAD:
Too many options paralyzes decision-making
Impact: Feature-rich UI prevents users from choosing anything
Fix: 3-5 options max, clear recommendations
```

**See**: `references/cognitive-biases.md`

---

### **2. Motivation: What Drives Behavior**

People are motivated by different things.

```
INTRINSIC MOTIVATION (Internal rewards):
- Autonomy (control over choices)
- Mastery (getting better at something)
- Purpose (contributing to something meaningful)
→ Creates sustainable engagement

EXTRINSIC MOTIVATION (External rewards):
- Money, status, badges, recognition
→ Works short-term, fades over time

BEHAVIORAL DESIGN FRAMEWORK:
Action = Motivation + Ability + Trigger

Example: User completes task
- Motivation: Feels sense of progress (mastery)
- Ability: Task is easy enough to complete (design)
- Trigger: Notification reminds them (notification)

All three required for behavior to happen.
If missing one, behavior doesn't happen.
```

---

### **3. The Adoption Curve: Who Are Your Users?**

People adopt at different rates.

```
ADOPTION DISTRIBUTION:

Innovators (2.5%):
- Love new technology
- Don't need convincing
- Will use for no reason
- Get them involved early

Early Adopters (13.5%):
- Will try new thing if it solves problem
- Influential opinion leaders
- Can drive adoption
- Build with their feedback

Early Majority (34%):
- Will adopt if proven to work
- Need evidence of value
- Need training/support
- Represent majority of growth

Late Majority (34%):
- Will adopt when necessary
- More skeptical, need clear ROI
- Require strong support
- Network effects matter (everyone has it)

Laggards (16%):
- Adopt only when forced
- Deeply resistant
- Need extensive training
- Often never fully adopt
```

**BA Implication**: Different segments need different strategies.

---

### **4. Friction Points: Why People Abandon Products**

Users abandon when friction exceeds value.

```
Friction Equation:
Decision = Value - Friction - Risk

High Value + Low Friction + Low Risk = ✓ Users adopt

Example - Sign up for service:
Value: Saves 5 hours/week (High)
Friction: 15-minute setup (Low)
Risk: $100/month, can cancel anytime (Low)
→ Likely to adopt

Example - Switch email provider:
Value: Slightly better UI (Low)
Friction: Export/import data (Medium)
Risk: Lose existing contacts (High)
→ Unlikely to adopt despite better product
```

**Common Friction Points**:
- Data entry (long forms reduce completion 25% per field)
- Learning curve (confusing UI stops users)
- Setup complexity (multiple setup steps, 80% abandon after step 3)
- Password/authentication (friction increases if password reset required)
- Integration with existing workflows (requires behavior change)

---

### **5. Behavioral Triggers: How to Prompt Action**

People need prompts to take action.

```
TRIGGER TYPES:

Spark (Motivation):
- "Get 2x more done with automation"
- Creates desire

Action (Ability):
- "Click here to start" (easy next step)
- Remove friction

Signal (Trigger):
- Notification, email, button
- Prompts remembering

COMPLETE LOOP:
1. Spark: Show value
2. Action: Make it easy
3. Signal: Send notification
4. Reward: Positive outcome → Habit forms

Example - Fitness App:
Spark: "You can beat your friend's step count" (motivation)
Action: One-click challenge (easy)
Signal: "Friend challenged you!" (trigger)
Reward: See your score vs theirs (positive)
→ User forms habit of checking daily
```

---

## User Segments: Different Psychology, Different Design

### **Enterprise Users**

```
Motivation: ROI, avoiding risk, doing job well
Biases: Loss aversion (resist change), status quo bias
Friction: Complex setup OK if justified
Triggers: Admin requirement, team nudging, metrics showing value

Design: Show business impact, risk mitigation, training
```

### **Consumer Users**

```
Motivation: Convenience, delight, entertainment
Biases: Confirmation bias (only see what confirms choice)
Friction: Very low tolerance, quit immediately if confusing
Triggers: Social proof, FOMO, gamification

Design: Delightful, frictionless, shows progress
```

### **Power Users**

```
Motivation: Mastery, control, advanced features
Biases: Sunk cost (invested time/learning), anchoring
Friction: Will tolerate complexity if more powerful
Triggers: New features, competitive leaderboards, mastery challenges

Design: Advanced features, customization, performance
```

---

## Adoption Barriers & Solutions

```
BARRIER: "I don't understand the value"
Psychology: Feature complexity > perceived benefit
Solution: Show value clearly before asking to try
         Simplify feature, or build tutorial

BARRIER: "It's too hard to use"
Psychology: Learning curve, cognitive load
Solution: Reduce steps, add guidance, build onboarding
         Make first success easy

BARRIER: "I don't have time to learn"
Psychology: Time scarcity, habit inertia
Solution: Minimal learning curve, fits existing workflow
         Show time savings upfront

BARRIER: "I don't trust it"
Psychology: Risk aversion, unknown unknowns
Solution: Show social proof, build gradually
         Start with small stakes, low risk
         Transparency about how it works

BARRIER: "It disrupts my workflow"
Psychology: Change aversion, loss of control
Solution: Minimize workflow change
         Let them control pace of adoption
         Support old way while transitioning
```

---

## Tools & Templates

- 📋 **User Persona Template**: `assets/user-persona-template.md`
- 📋 **Jobs-to-be-Done Template**: `assets/jtbd-template.md`
- 📋 **Adoption Barrier Assessment**: `assets/adoption-barrier-template.md`
- 📋 **Behavioral Design Canvas**: `assets/behavioral-design-canvas.md`
- 📋 **Friction Analysis Worksheet**: `assets/friction-analysis-template.md`

---

## Usage Examples

```
/user-psychology "Why are users abandoning at step 3 of onboarding?"
/user-psychology "How do we design for late majority adopters?"
/user-psychology "What's preventing users from using Feature X?"
```

---

## BA Standards & References

Based on:
- **Behavioral Economics**: Irrational decision-making patterns
- **Cognitive Psychology**: How people think, process information
- **Change Management**: Overcoming adoption resistance
- **UX Psychology**: Designing for human behavior
- **Habit Formation**: Building sustainable behaviors

**Detailed Frameworks**:
- 📚 `references/cognitive-biases.md` - 20+ biases and design implications
- 📚 `references/motivation-framework.md` - Intrinsic vs extrinsic, designing for sustainable engagement
- 📚 `references/adoption-barriers.md` - Common barriers and solutions
- 📚 `references/behavioral-triggers.md` - Prompting action and habit formation
- 📚 `references/user-segments.md` - Different psychology by user type
