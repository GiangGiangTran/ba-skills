---
name: market-dynamics
description: "Master market domain knowledge - understand competitive landscape, market trends, positioning, customer segments, go-to-market strategy, and market evolution. Use for evaluating market opportunity, competitive strategy, and positioning decisions."
allowed-tools: Write
metadata:
  version: "2.0"
  claude-code:
    context: fork
    agent: Explore
    user-invocable: true
---

# Market Dynamics for BA

A good product in wrong market is still a failure.

## What is Market Domain Knowledge?

**Definition**: Understanding the market ecosystem - competitors, trends, customer segments, market forces, and how products position within that market.

**Why it matters**:
- Wrong target: Building for market that can't afford you
- Missing trends: Competitors see shift you miss
- Poor positioning: No differentiation, competes on price
- Bad timing: Good product, wrong moment
- Market dynamics ignored: Regulatory changes, consolidation, new competitors

**When to Use**:
- ✅ Evaluating market opportunity
- ✅ Understanding competitive positioning
- ✅ Anticipating market changes
- ✅ Identifying customer segments
- ✅ Making go-to-market decisions

---

## 5 Core Market Concepts

### **1. Market Segmentation: Who Can You Serve?**

Not all customers are equal.

```
CUSTOMER SEGMENTS:

By Organization Type:
- Enterprise (1,000+ employees)
- Mid-market (100-1,000)
- SMB (10-100)
- Solopreneur (1)

By Use Case:
- Sales team usage
- Marketing team usage
- Engineering team usage
- Finance team usage

By Industry:
- SaaS
- Healthcare
- Finance
- Retail
- Manufacturing

By Geography:
- US East Coast
- Europe
- Asia
- Emerging markets

Each segment has:
- Different needs
- Different willingness to pay
- Different buying process
- Different success factors
```

**BA Implication**: You can't serve everyone equally. Choose segments strategically.

---

### **2. Competitive Positioning: Why Choose You?**

How do you differ from competitors?

```
POSITIONING FRAMEWORK:

Market Opportunity:
├─ Total addressable market (all possible customers)
├─ Your target segment
│  ├─ Realistic % market share in 3 years: 5-10%?
│  └─ Estimated revenue: $10M? $100M?
│
├─ Competitor Landscape:
│  ├─ Direct competitors (solve same problem)
│  ├─ Indirect competitors (alternative solutions)
│  └─ Potential competitors (could enter)
│
├─ Your Differentiation:
│  ├─ Product differentiation (features/quality/UX)
│  ├─ Pricing differentiation (cost/value structure)
│  ├─ Market differentiation (go-to-market approach)
│  └─ Brand differentiation (trust, reputation)
│
└─ Sustainable Advantage:
   ├─ Defensible? (Can competitors easily copy?)
   ├─ Durable? (Will it last 3+ years?)
   └─ Valuable? (Do customers care?)
```

**Positioning Matrix**:
```
                    Premium
                       ↑
        ┌──────────────┼──────────────┐
        │              │              │
  Low   │  Budget      │              │  Enterprise
  Value │  Solution    │   Balanced   │  Solution
  ─────┼──────────────┼──────────────┤─────
        │              │              │
        │              │              │
        └──────────────┼──────────────┘
                       ↓
                    Budget
```

---

### **3. Market Trends: Where Is Market Going?**

Markets evolve. Winners anticipate change.

```
TREND ANALYSIS FRAMEWORK:

Type: Market consolidation (many → few)
- Current: 50 small vendors
- Direction: Mergers, only 5-10 major players in 5 years
- Implication: Consolidate or be acquired, not IPO path

Type: Shift in buyer priority
- Current: Buyers care about features
- Direction: Shifting to ease of use, security
- Implication: Investment priorities change

Type: New technology enabler
- Current: Manual data entry required
- Direction: AI automation available
- Implication: Cost structure changes, new players can compete

Type: Regulatory change
- Current: Minimal compliance required
- Direction: Strict data privacy laws coming (GDPR, CCPA)
- Implication: Compliance becomes feature, not differentiator

Type: Market maturation
- Current: Growing market (+50% YoY)
- Direction: Maturation (-10% to +10% growth)
- Implication: Focus shifts from growth to profitability
```

**See**: `references/market-trends.md`

---

### **4. Customer Segments: Different Customers, Different Needs**

```
SEGMENT A: Enterprise Companies
├─ Willingness to pay: Very high ($50K-$500K+ annually)
├─ Decision process: Long, political, requires vendor selection
├─ Success factors:
│  ├─ Proven reliability
│  ├─ Compliance/security certifications
│  ├─ Strong support
│  ├─ Integration with their systems
│  └─ Customization available
├─ Go-to-market: Sales team, ROI calculator, pilot programs
└─ Timeline: 6-12 months sales cycle

SEGMENT B: Mid-Market
├─ Willingness to pay: Medium ($5K-$50K annually)
├─ Decision process: Faster than enterprise, but still multiple approvals
├─ Success factors:
│  ├─ Balance of features + ease of use
│  ├─ Reasonable cost
│  ├─ Responsive support
│  └─ Works out of the box
├─ Go-to-market: Mix of sales + self-serve, trial programs
└─ Timeline: 2-3 months sales cycle

SEGMENT C: SMB/Self-service
├─ Willingness to pay: Low ($50-$500 annually)
├─ Decision process: Fast, one person decides
├─ Success factors:
│  ├─ Intuitive, no learning curve
│  ├─ Quick setup (< 5 minutes)
│  ├─ Obvious value
│  └─ Low risk (can cancel anytime)
├─ Go-to-market: Product-led growth, free trials, viral loops
└─ Timeline: Same-day sign up to months of adoption
```

Each segment needs different:
- Product features
- Pricing model
- Sales approach
- Marketing message

---

### **5. Go-to-Market Strategy: How Will You Win Customers?**

```
SALES-DRIVEN (Enterprise):
- Sales team sells to decision-makers
- High CAC (Customer Acquisition Cost): $10K-$100K+
- Long sales cycles: 3-12 months
- High ACV (Annual Contract Value): $50K+
- Works for Enterprise segment

SELF-SERVE (SMB):
- Product is so obvious, users sign up themselves
- Low CAC: $10-$100
- Short decision cycle: Days to weeks
- Low ACV: $50-$500
- Works for self-service segment

MARKETING-DRIVEN (Mid-Market):
- Marketing creates awareness + demand
- Medium CAC: $500-$5K
- Medium sales cycle: 1-3 months
- Medium ACV: $5K-$50K
- Works for mid-market

COMMUNITY-DRIVEN:
- Community becomes product advocates
- CAC: Minimal if viral
- Adoption: Organic, self-driven
- ACV: Varies
- Works if product is beloved
```

---

## Market Analysis Tools

### **SWOT Analysis**

```
STRENGTHS (Our advantages):
- Unique technology
- Strong team
- Early market position
- Proven customer success

WEAKNESSES (Our disadvantages):
- Limited budget vs competitors
- Unknown brand
- Smaller team
- Immature product

OPPORTUNITIES (Market tailwinds):
- Market growing 40% annually
- Regulations forcing purchasing
- Competitor misstep
- New technology enables new approach

THREATS (Market headwinds):
- Competitor better funded
- Market consolidation
- Technology shift
- Economic downturn
```

---

### **Porter's 5 Forces**

```
Competitive Rivalry: How intense is competition?
Threat of New Entrants: How easy to enter market?
Threat of Substitutes: Are there alternative solutions?
Bargaining Power of Buyers: Do customers have power?
Bargaining Power of Suppliers: Do suppliers have power?

High intensity on any = difficult market
```

---

## Tools & Templates

- 📋 **Market Analysis Template**: `assets/market-analysis-template.md`
- 📋 **Competitive Landscape Worksheet**: `assets/competitive-analysis-template.md`
- 📋 **Customer Segment Profile**: `assets/customer-segment-template.md`
- 📋 **Positioning Statement Template**: `assets/positioning-statement-template.md`
- 📋 **Go-to-Market Strategy**: `assets/gtm-strategy-template.md`

---

## Usage Examples

```
/market-dynamics "SaaS project management" "How should we position vs Monday.com and Asana?"
/market-dynamics "emerging-market" "What are market trends in European market?"
/market-dynamics "segment-choice" "Should we focus on enterprise or mid-market first?"
```

---

## BA Standards & References

Based on:
- **Competitive Strategy**: Porter's positioning framework
- **Market Analysis**: Sizing, trends, dynamics
- **Customer Segmentation**: Different needs, different GTM
- **Product-Market Fit**: Finding customers who want what you're building
- **Business Strategy**: Market choices and positioning

**Detailed Frameworks**:
- 📚 `references/competitive-analysis.md` - Analyzing competitive landscape
- 📚 `references/market-trends.md` - Identifying and anticipating shifts
- 📚 `references/customer-segmentation.md` - Finding and serving different segments
- 📚 `references/positioning-strategy.md` - Differentiating in market
- 📚 `references/go-to-market.md` - Sales, marketing, and distribution strategy
