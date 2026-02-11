---
name: data-analysis
description: "Master data-driven analysis - collect relevant data, analyze patterns, visualize findings, interpret results, support decisions with evidence. Use for validating assumptions, prioritizing features, and measuring success."
allowed-tools: Write
metadata:
  version: "2.0"
  claude-code:
    context: fork
    agent: Explore
    user-invocable: true
---

# Data Analysis for BA

Support decisions with evidence, not intuition.

## What is Data Analysis?

**Definition**: Systematic process of collecting, cleaning, analyzing, and interpreting data to answer business questions and inform decisions.

**Why it matters**:
- Intuition wrong 30-40% of time (cognitive biases)
- Data reveals truth hidden from observation
- Numbers convince executives better than opinions
- Baseline data allows measuring progress

**When to Use**:
- ✅ Validating assumptions (do 50% of users really want this?)
- ✅ Prioritizing features (which matters most to customers?)
- ✅ Measuring success (are we meeting our KPIs?)
- ✅ Identifying problems (where is quality failing?)
- ✅ Comparing options (Option A or Option B?)

---

## 4 Levels of Analytics

### **Level 1: Descriptive Analytics (What happened?)**

Summarize historical data.

```
Question: "How many users signed up last month?"
Data: User signup logs
Analysis: Count signups by cohort
Output: 5,234 signups (↑12% vs previous month)

Question: "Which features get used most?"
Data: Feature usage logs
Analysis: Count usage by feature
Output: Feature A: 85%, Feature B: 45%, Feature C: 12%
```

---

### **Level 2: Diagnostic Analytics (Why happened?)**

Understand causes behind observations.

```
Question: "Why did signups drop last week?"
Data: Signups, marketing spend, conversion rates, technical incidents
Analysis: Correlate events with signup dips
Output: Correlation with:
  - Reduced ad spend (-$10K) = -800 signups expected
  - Website downtime (2 hours) = -50 signups lost
  Root cause: Marketing reduced budget, not technical issue
```

---

### **Level 3: Predictive Analytics (What will happen?)**

Forecast future based on patterns.

```
Question: "How many users will churn next quarter?"
Historical Data: Churn patterns by cohort, feature adoption, support tickets
Analysis: Identify predictive factors (inactivity >30 days = 70% churn)
Output: Predicted 300 users (±20%) will churn next quarter
Action: Design retention campaign for inactive users
```

---

### **Level 4: Prescriptive Analytics (What should we do?)**

Recommend specific actions based on data.

```
Question: "Which feature should we build to reduce churn?"
Data: Churn reasons, feature requests, competitive analysis
Analysis: Feature A prevents 200 churns, costs $50K, ROI: 4x
         Feature B prevents 80 churns, costs $30K, ROI: 2.7x
Output: Recommendation: Build Feature A first
```

---

## 5-Step Data Analysis Process

### **Step 1: Define Question Clearly**

Bad questions:
- ❌ "What do users want?" (too vague)
- ❌ "Are we doing well?" (no comparison)
- ❌ "Should we pivot?" (unclear metrics)

Good questions:
- ✅ "What % of users use feature X regularly?" (specific, measurable)
- ✅ "Are retention rates higher for cohort A vs B?" (comparative)
- ✅ "If we reduce price by 20%, how many new users do we gain?" (specific impact)

---

### **Step 2: Identify & Collect Data**

**Data sources**:
- Product data (usage, events, features)
- Business data (revenue, churn, support)
- User data (surveys, interviews, NPS)
- Market data (competitors, industry trends)
- Operational data (costs, resources, timeline)

**Quality check**:
- ✅ Is data accurate? (check for obvious errors)
- ✅ Is it complete? (missing data?)
- ✅ Is it timely? (recent enough?)
- ✅ Is it relevant? (answers your question?)

**See**: `references/data-collection.md`

---

### **Step 3: Analyze Data**

**Common analysis techniques**:
- **Trend Analysis**: How values change over time
- **Cohort Analysis**: Compare groups (early vs late users)
- **Correlation**: Do two variables move together?
- **Segmentation**: Break data into meaningful groups
- **Benchmarking**: Compare against standard or competitor

---

### **Step 4: Visualize & Interpret**

Present data clearly so insights jump out.

**Chart types**:
- **Trend**: Line chart (usage over time)
- **Comparison**: Bar chart (Feature A vs B usage)
- **Part-to-whole**: Pie chart (% of each feature)
- **Distribution**: Histogram (spread of values)
- **Relationship**: Scatter plot (correlation between variables)

**Interpretation**:
- What does data show?
- What's surprising or unexpected?
- What explains the pattern?
- What could be wrong with this interpretation?

---

### **Step 5: Communicate & Act**

Present findings so stakeholders understand and believe them.

```
1. START WITH FINDING:
   "Users with fewer than 3 logins per month have 80% churn rate"

2. PROVIDE EVIDENCE:
   "Based on 10,000 users over 6 months"

3. EXPLAIN IMPLICATION:
   "This means inactive users are at extreme risk"

4. RECOMMEND ACTION:
   "Design re-engagement campaign for <3 logins/month users"

5. PROPOSE MEASUREMENT:
   "Track churn rate improvement monthly"
```

---

## Common Data Analysis Pitfalls

❌ **Correlation ≠ Causation**
```
Observation: High support tickets correlate with high usage
False conclusion: High usage causes support tickets
Better analysis: High usage reveals more bugs → more tickets
                 Need: Better QA, not less usage
```

❌ **Survivor Bias**
```
Observation: Surviving customers have high satisfaction
False conclusion: Our product is great
Missing data: Unhappy customers already left
Better analysis: Include churned customer feedback
```

❌ **Simpson's Paradox**
```
Situation: Feature A better than B overall, but worse in each segment
Example: Men prefer A (70% vs 60%), Women prefer A (65% vs 50%)
        But overall: B beats A (65% vs 60%)
Why: Different group sizes skew overall results
Fix: Analyze by segment, not aggregate
```

❌ **P-Hacking / Multiple Comparisons**
```
Problem: Test 100 hypotheses, some will be significant by chance
        Claim victory on random findings
Fix: Pre-specify hypothesis before analysis
    Validate findings on new data
```

---

## Tools & Templates

- 📋 **Analysis Plan Template**: `assets/analysis-plan-template.md`
- 📋 **Data Collection Checklist**: `assets/data-collection-checklist.md`
- 📋 **Findings Presentation Template**: `assets/findings-presentation-template.md`
- 📋 **Cohort Analysis Template**: `assets/cohort-analysis-template.md`
- 📋 **Statistical Significance Calculator**: `assets/significance-calculator.md`

---

## Usage Examples

```
/data-analysis "What % of users adopt new feature within 2 weeks?"
/data-analysis "Which pricing point maximizes revenue?" "Have price sensitivity survey"
/data-analysis "Why did churn increase 15% last month?"
```

---

## BA Standards & References

Based on:
- **Statistics**: Hypothesis testing, confidence intervals, significance
- **Analytics**: Descriptive, diagnostic, predictive, prescriptive
- **Causal Inference**: How to identify true causes
- **User Research**: Quantitative research methods

**Detailed Frameworks**:
- 📚 `references/data-collection.md` - Finding, gathering, and validating data
- 📚 `references/analysis-techniques.md` - Trend, cohort, segmentation, correlation analysis
- 📚 `references/statistical-thinking.md` - Confidence, significance, and limitations
- 📚 `references/visualization.md` - Choosing right charts and telling story with data
- 📚 `references/common-pitfalls.md` - Bias, correlation, and interpretation mistakes
