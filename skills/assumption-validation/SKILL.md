---
name: assumption-validation
description: "Master assumption validation - identify hidden assumptions, test whether they're true, find contradictions and risks. Use for validating risky assumptions before committing resources."
allowed-tools: Read, Write
context: fork
agent: Explore
argument-hint: [assumption-area] [optional-context]
user-invocable: true
---

# Assumption Validation for BA

Every plan is built on assumptions. Which ones are risky?

## What is Assumption Validation?

**Definition**: Systematically identifying unstated assumptions, assessing their risk, and validating whether they're true before committing significant resources.

**Why it matters**:
- Hidden assumptions: "We assume users will pay $50/month" (unvalidated = risk!)
- Risky assumptions: Proceed with unvalidated assumption = 50% chance failure
- Early validation: Test assumption with 10 users before building for 1,000
- Risk reduction: Risky assumption mitigated = confidence increases

**When to Use**:
- ✅ Before major decisions (evaluate risk of assumption)
- ✅ Before significant investment (validate assumptions first)
- ✅ When contradictions appear (assumption vs reality conflict)
- ✅ When planning features (what assumptions enable this feature?)
- ✅ In risk assessments (what assumptions could fail?)

---

## 3 Assumption Categories

### **Type 1: Market Assumptions**

Assumptions about whether market wants/needs your product.

```
Examples:
- "Users need mobile app for this task"
- "Customers will pay $50/month"
- "This is top 3 priority for customers"
- "Market size is $100M+, not $10M"

Risks if wrong:
- Feature nobody wants
- Pricing too high for market
- Insufficient market size for viability

How to validate:
- User interviews (do they really need this?)
- Pricing research (what would they pay?)
- TAM analysis (is market big enough?)
```

---

### **Type 2: Technical Assumptions**

Assumptions about what's feasible to build.

```
Examples:
- "We can integrate with Salesforce API"
- "System can handle 100K concurrent users"
- "We can build this in 6 weeks"
- "We don't need database migration"

Risks if wrong:
- Integration impossible/very hard
- System fails under load
- Timeline slips
- Migration required = hidden cost

How to validate:
- Technical spike (proof of concept)
- Architecture review
- Effort estimation with team
- Performance testing
```

---

### **Type 3: Business Assumptions**

Assumptions about business model and impact.

```
Examples:
- "Free tier will drive 50% conversion to paid"
- "Feature will reduce churn by 10%"
- "Competitor won't enter this market"
- "We can support 100 customers with 2 support staff"

Risks if wrong:
- Unit economics broken
- Expected ROI doesn't materialize
- Competitive threat emerges
- Operations overwhelmed

How to validate:
- Competitor analysis
- Cohort analysis (historical data)
- Financial modeling
- Support capacity planning
```

---

## 5 Assumption Validation Techniques

### **1. Assumption Mapping**

Identify all assumptions for a plan/project.

```
PROJECT: Build mobile app

Product Assumptions:
- Users need mobile version
- Mobile version will increase engagement 20%
- Users willing to download app
- Mobile setup simpler than web

Technical Assumptions:
- Can build native iOS/Android in 4 months
- Can share backend with web
- Performance acceptable on older phones

Business Assumptions:
- Mobile users higher lifetime value
- Can acquire 10K mobile users in 6 months
- Revenue per mobile user justified development cost

Market Assumptions:
- Competitors don't have mobile yet
- Mobile increasingly important in market
- Users prefer apps to mobile web

List all assumptions explicitly before proceeding!
```

---

### **2. Risk Scoring Assumptions**

Assess which assumptions are most risky.

```
Assumption: "Users need mobile app"

Likelihood of being wrong: 20%
  (We asked users, they said yes)
  → Low risk

Impact if wrong: 20 (out of 100)
  (We built it, gets no adoption)
  → Medium impact

Risk Score: 20% × 20 = 4 (Low risk)
→ Can proceed with low concern

---

Assumption: "Can build feature in 4 weeks"

Likelihood of being wrong: 40%
  (New technology, uncertain estimate)
  → High risk

Impact if wrong: 90 (out of 100)
  (Timeline slips 2+ weeks, cascading delays)
  → High impact

Risk Score: 40% × 90 = 36 (High risk!)
→ Should validate/mitigate before committing
```

---

### **3. Validation Methods**

Different methods for different assumptions.

```
ASSUMPTION: "Users need mobile app"
Validation Methods (ranked by evidence):
1. User interviews (5-8 users explicitly state need) - Strong
2. Survey asking about mobile needs - Medium
3. Market research showing mobile trend - Weak
Best: Interview users directly

ASSUMPTION: "Feature reduces churn 10%"
Validation Methods:
1. Pilot feature with subset, measure churn change - Strong
2. Customer feedback saying they'd stay for this - Medium
3. Competitor claims about feature adoption - Weak
Best: Run controlled pilot

ASSUMPTION: "Can integrate with Salesforce"
Validation Methods:
1. Technical spike building sample integration - Strong
2. Review Salesforce API documentation - Medium
3. Ask Salesforce support - Medium
Best: Proof of concept
```

---

### **4. Assumption Testing Framework**

Structured way to test assumptions.

```
ASSUMPTION:
"Reducing price from $100 to $50 monthly will increase customers by 50%"

CURRENT STATE:
- 100 customers at $100/month = $10K MRR
- Expected: 150 customers at $50/month = $7.5K MRR (bad idea)

TEST SETUP:
- Offer $50 to 20 existing customers for 1 month
- Track: Do they renew? Higher/lower satisfaction?
- Control: 20 customers stay at $100

HYPOTHESIS:
- If 50%+ of $50 group renew, price reduction attractive
- If satisfaction improves significantly, downside mitigated

MEASUREMENT:
- Renewal rate: $50 group (target: 70%+)
- Satisfaction: Compare NPS scores
- Revenue impact: Calculate true MRR at new price

DECISION CRITERIA:
- If test shows renewal ≥ 70%, price reduction viable
- If renewal < 50%, price reduction kills retention
```

---

### **5. Contradiction Analysis**

Find when assumptions conflict with evidence.

```
ASSUMPTION 1: "Users love our product" (Assumption)
ASSUMPTION 2: "Churn is 5% monthly" (Assumption)

Contradiction Check:
- If users love it, why would 5% leave each month?
- Is product quality really high? (Then churn should be 1-2%)
- Or is churn actually high? (Then users don't love it)

Investigation:
Interview churned customers:
- "I did like the product, but..."
- "Competitive product had feature we needed"
- "Price got too high for small team"

Resolution:
- Users DO like product (assumption 1 true)
- BUT other factors causing churn (price, feature gaps)
- Contradiction resolved: Love product, leave for other reasons
```

---

## Assumption Validation Checklist

**Before Major Decision/Investment**:

- [ ] **Identify**: List all assumptions for this decision
- [ ] **Prioritize**: Which are most risky? (high impact × high uncertainty)
- [ ] **Validate**: Test top 3-5 risky assumptions
- [ ] **Decide**: Based on validation results, proceed or pivot?
- [ ] **Monitor**: Track assumptions during execution
- [ ] **Adjust**: If assumptions prove wrong, change plan

---

## Common Assumption Validation Mistakes

❌ **Confirmation Bias**
```
Problem: "I believe feature X will succeed, so I only look for
         evidence supporting this, ignore evidence against"
Fix: Actively seek disconfirming evidence
     Ask "How could I be wrong?"
```

❌ **Low Evidence Bar**
```
Problem: "One user said they'd buy, so assumption validated!"
Issue: 1 user isn't enough validation
Fix: Need 5-8+ validation before confidence
```

❌ **Wrong Validation Method**
```
Problem: "Users said they'd use feature if I asked" (hypothetical)
Issue: People say yes to hypotheticals, don't do in reality
Fix: Test actual behavior when stakes real
```

❌ **Ignoring Contradictions**
```
Problem: "Market is growing AND declining" (contradictory data)
Issue: Can't both be true, indicates misunderstanding
Fix: Investigate to resolve contradiction
```

---

## Assumption Lifecycle

```
PLANNING PHASE:
├─ Identify all assumptions
├─ Score risk (impact × likelihood)
└─ Plan validation for top risks

EXECUTION PHASE:
├─ Monitor assumptions
├─ Test if assumptions hold
├─ Flag if assumptions proving wrong
└─ Adjust plan if needed

COMPLETION PHASE:
├─ Document which assumptions proved true
├─ Document which proved false
├─ Learn for next project
└─ Build institutional knowledge
```

---

## Tools & Templates

- 📋 **Assumption Map Template**: `assets/assumption-map-template.md`
- 📋 **Risk Scoring Worksheet**: `assets/assumption-risk-scoring.md`
- 📋 **Validation Test Plan**: `assets/validation-test-plan-template.md`
- 📋 **Contradiction Detection**: `assets/contradiction-analysis-template.md`
- 📋 **Monitoring Dashboard**: `assets/assumption-monitoring-template.md`

---

## Usage Examples

```
/assumption-validation "product-strategy" "Are our pricing assumptions realistic?"
/assumption-validation "project-plan" "Which timeline assumptions are risky?"
/assumption-validation "market-entry" "What market assumptions should we validate first?"
```

---

## BA Standards & References

Based on:
- **Lean Startup**: Testing riskiest assumptions first
- **Decision Making**: Identifying assumptions in plans
- **Risk Management**: Assessing assumption risk
- **Scientific Method**: Hypothesis testing

**Detailed Frameworks**:
- 📚 `references/assumption-identification.md` - Finding hidden assumptions
- 📚 `references/risk-assessment.md` - Scoring assumption risk
- 📚 `references/validation-methods.md` - Different ways to test assumptions
- 📚 `references/contradiction-detection.md` - Finding conflicting assumptions
- 📚 `references/hypothesis-testing.md` - Structured testing framework
