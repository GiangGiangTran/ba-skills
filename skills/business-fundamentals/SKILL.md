---
name: business-fundamentals
description: "Master business domain knowledge - understand business models, unit economics, revenue mechanisms, metrics, profitability, financial analysis. Use for evaluating business cases, prioritizing features by business value, and understanding financial impact."
allowed-tools: Write
context: fork
agent: Explore
argument-hint: [business-type] [business-model]
user-invocable: true
---

# Business Fundamentals for BA

Every requirement has business impact. Understand the math.

## What is Business Domain Knowledge?

**Definition**: Understanding how the business makes money, generates value, and measures success - the financial and operational foundations.

**Why it matters**:
- Bad prioritization: Build features nobody will pay for
- Missed opportunities: Don't recognize high-value features
- Weak business cases: Can't justify investment to executives
- Wrong metrics: Measuring vanity metrics, not real impact

**When to Use**:
- ✅ Evaluating business case for initiative
- ✅ Prioritizing features by business value
- ✅ Understanding customer economics
- ✅ Analyzing financial impact
- ✅ Setting success metrics tied to business

---

## 3 Core Business Model Concepts

### **1. How Does the Company Make Money?**

Different business models, different priorities:

**Subscription/SaaS**:
- Key metric: MRR (Monthly Recurring Revenue)
- Priorities: Reduce churn, increase ARPU (Average Revenue Per User)
- Customer lifetime value matters more than acquisition cost

**Transactional (Marketplace)**:
- Key metric: GMV (Gross Merchandise Volume)
- Priorities: Increase transaction volume, take rate
- Liquidity (supply + demand) matters most

**Freemium**:
- Key metric: Conversion rate (Free → Paid)
- Priorities: Maximize free user base, conversion funnel
- Balance: Too aggressive → low adoption, Too passive → no revenue

**Advertising**:
- Key metric: CPM (Cost Per Mille), CTR (Click-Through Rate)
- Priorities: Maximize time-on-site, ad placements
- User experience vs ad density trade-off

**See**: `references/business-models.md`

---

### **2. Unit Economics (The Math That Matters)**

Every business needs this math to work:

```
For SaaS Business:

Customer Acquisition Cost (CAC): $500
  = Sales + Marketing spend / New customers

Monthly Subscription Price: $100
Gross Margin: 80%
  = Revenue - COGS / Revenue

Monthly Churn Rate: 5%
  = (Customers lost / Starting customers) / Month

Lifetime Value (LTV): $1,600
  = (Monthly Price × Gross Margin) / Monthly Churn

LTV/CAC Ratio: 3.2
  = $1,600 / $500

Rule of Thumb: LTV/CAC should be ≥ 3
Status: ✓ Unit economics work!
```

---

### **3. Business Metrics vs Vanity Metrics**

Not all numbers matter equally.

```
VANITY METRICS (Make you feel good, don't drive decisions):
❌ Total users (if they're inactive)
❌ Downloads (if mostly one-time)
❌ Page views (if low engagement)
❌ Revenue (if losing money)

ACTIONABLE METRICS (Drive decisions and behavior):
✅ Daily active users (engagement)
✅ Customer retention rate (satisfaction)
✅ Feature adoption rate (value delivery)
✅ Customer acquisition cost (efficiency)
✅ Gross profit (sustainability)
✅ Customer lifetime value (long-term value)
```

---

## 5 Key Business Concepts BA Must Know

### **1. Value Proposition**

Why would customers choose you?

**Framework**:
```
TARGET CUSTOMER:
- Who specifically? (not "everyone")
- What's their problem?
- Why do they care?

YOUR SOLUTION:
- How do you solve it?
- Why better than alternatives?
- What's unique?

ECONOMIC VALUE:
- How much time/cost do you save?
- How much more money do they make?
- What's it worth to them?

EXAMPLE:
Target: Marketing managers managing 5+ campaigns
Problem: Spending 20+ hours/week on manual reporting
Your solution: Automated reporting dashboard
Value: Saves 15 hours/week = $1,500/month (at $100/hr)
```

---

### **2. Total Addressable Market (TAM)**

How big is the opportunity?

```
TAM ESTIMATION (Top-Down):
- Total market: "How many companies worldwide?"
- Industry data: "Average spend on our category"
- TAM = Total companies × Avg spend

Example: HR Analytics
- Companies worldwide: 5M
- Spend on HR analytics: $10K/year average
- TAM = $50 Billion

Does it justify your business?
- If 1% market share = $500M revenue = worth pursuing
- If max is 0.01% = $5M = riskier bet
```

**See**: `references/market-sizing.md`

---

### **3. Competitive Positioning**

Why would customers choose you vs competitors?

```
POSITIONING QUADRANT:

                  PREMIUM
                     |
    HIGH QUALITY  |  ● Us
                  |  ○ Competitor A
    ────────────────┼────────────────  PRICE
    LOW QUALITY  |  ○ Competitor B
                  |
                  BUDGET
```

**Questions**:
- Where are we positioned? (High quality/price? Low quality/price?)
- Is that sustainable? (Can we compete there?)
- How do we differentiate? (Not just cheaper copy)

---

### **4. Customer Economics**

Understanding your customer's business:

```
If customers are Enterprise Companies:
├─ What drives their revenue? (Products/Services)
├─ What are major costs? (Salaries, infrastructure)
├─ What's their profit margin? (Revenue minus costs)
├─ How do we improve their business?
│  └─ Increase revenue? (Sell more)
│  └─ Reduce costs? (Save money)
│  └─ Reduce risk? (Avoid losses)
└─ What's it worth to them? (Quantify impact)
   └─ "You save $100K/year" = Max price ~$30K/year
```

---

### **5. Financial Sustainability**

Can this business survive?

```
UNIT ECONOMICS MUST WORK:
├─ Gross Margin > 50% (ideally >70%)
│  └─ Revenue - Cost of Goods Sold / Revenue
│  └─ For SaaS: hosting, support, payment processing
│
├─ CAC Payback < 12 months
│  └─ How long until customer value pays for acquisition?
│  └─ If CAC=$1000, Monthly margin=$200, payback = 5 months ✓
│
├─ Positive LTV/CAC (ideally > 3)
│  └─ Customer lifetime value should be 3x acquisition cost
│  └─ Ensures business is profitable
│
└─ Path to profitability clear
   └─ How do we get from current to sustainable?
   └─ At what revenue/user base do we break even?
```

---

## How BA Uses Business Knowledge

**Scenario 1: Prioritizing Features**
```
Feature A: Saves users 1 hour/week
  Impact: Improves engagement, reduces churn 2%
  Business value: $100K/year (at current LTV)
  Effort: 2 weeks
  ROI: $100K / (2 weeks × engineer salary) = High

Feature B: Requested by early adopters
  Impact: Improves engagement for 5% of users
  Business value: $5K/year
  Effort: 3 weeks
  ROI: $5K / (3 weeks × engineer salary) = Low

Decision: Build A first, B second
```

---

**Scenario 2: Evaluating New Business**
```
Should we build premium tier at $500/month?

Current: 1,000 users at $100/month = $100K MRR
Projected: 10% convert to premium = 100 premium users

Premium revenue: 100 × $500 = $50K MRR
Premium churn: +2% higher (riskier, more demanding)

Impact: $50K more revenue, but higher support cost (+$5K/month)
Net: +$45K MRR

Effort: 4 weeks
Decision: Worth doing
```

---

## Tools & Templates

- 📋 **Business Case Template**: `assets/business-case-template.md`
- 📋 **Unit Economics Calculator**: `assets/unit-economics-calculator.md`
- 📋 **TAM Analysis Worksheet**: `assets/tam-analysis-worksheet.md`
- 📋 **Feature Value Assessment**: `assets/feature-value-template.md`
- 📋 **Financial Impact Template**: `assets/financial-impact-template.md`

---

## Usage Examples

```
/business-fundamentals "SaaS B2B" "Trying to understand why feature A matters more than B"
/business-fundamentals "Marketplace" "Evaluating pricing strategy impact on GMV"
/business-fundamentals "Freemium" "Should we restrict free tier to improve conversion?"
```

---

## BA Standards & References

Based on:
- **Financial Analysis**: Understanding business metrics and unit economics
- **Business Strategy**: Business models and competitive positioning
- **Product Management**: Feature prioritization by business value
- **Startup Finance**: Metrics that matter for sustainability

**Detailed Frameworks**:
- 📚 `references/business-models.md` - SaaS, marketplace, freemium, advertising models
- 📚 `references/unit-economics.md` - CAC, LTV, gross margin, payback period
- 📚 `references/market-sizing.md` - TAM, SAM, SOM calculation methods
- 📚 `references/financial-impact.md` - Quantifying business impact of features
- 📚 `references/competitive-positioning.md` - Differentiation and competitive strategy
