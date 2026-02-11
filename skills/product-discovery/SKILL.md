---
name: product-discovery
description: "Conduct product discovery and research - identify problems, validate assumptions, research users and markets, create product briefs for handoff to product managers. Use when starting new features, validating product ideas, or planning new products."
allowed-tools: Read, Write, Grep, Bash
context: fork
agent: Explore
user-invocable: true
argument-hint: [problem-statement] [target-audience]
---

# Product Discovery & Research

Conduct comprehensive product discovery through structured research, user interviews, and market analysis.

## Discovery Framework

### Phase 1: Problem Discovery

**Understand the Problem**:
- What problem exists? (Be specific, not vague)
- Who experiences this problem? (Target user/audience)
- How do they currently handle it? (Current solution/workaround)
- What's the impact of the problem? (Cost, frustration, lost opportunity)
- Is this really the problem they're trying to solve?

**Discovery Questions**:
```
"Can you describe the last time you encountered this problem?"
"What did you try to do?"
"What happened?"
"How did that make you feel?"
"What would an ideal solution look like?"
```

**Red Flags (Problem not validated)**:
- ❌ No data, only assumptions
- ❌ Solving assumed problem, not real problem
- ❌ No user feedback collected
- ❌ Problem description is vague
- ❌ No clear target audience

---

### Phase 2: Research - Four Parallel Tracks

Conduct research across 4 tracks simultaneously for comprehensive understanding:

#### **Track 1: User Research**

**User Discovery**:
- Who are the primary users?
- Who are secondary users?
- What are their goals/motivations?
- What are their pain points?
- How do they currently solve the problem?

**Interview Approach**:
- 5-8 user interviews (structured)
- Questions focused on behavior, not opinions
- Look for patterns across users
- Validate assumptions about the problem

**Output**:
- User personas (3-5 key personas)
- User journey maps
- Pain points prioritized
- Key insights documented

#### **Track 2: Market Research**

**Market Analysis**:
- What's the market size? (TAM - Total Addressable Market)
- What are market trends?
- Is market growing, flat, or declining?
- What are regulatory/compliance considerations?
- Are there industry benchmarks?

**Competitive Landscape**:
- Who are existing competitors?
- What are they doing?
- What's working for them?
- What are gaps in market?
- How can we differentiate?

**Output**:
- Market sizing analysis
- Trend analysis & forecasts
- Competitive landscape map
- Market opportunity assessment
- Regulatory considerations

#### **Track 3: Technical Feasibility**

**Technical Analysis**:
- What technology options exist?
- What are scalability constraints?
- What's the development effort?
- What dependencies exist?
- What are technical risks?

**Resource Assessment**:
- Team skills available?
- External dependencies?
- Infrastructure requirements?
- Timeline realistic?

**Output**:
- Technology options matrix (pro/con)
- Scalability assessment
- Risk analysis
- Effort estimate
- Resource requirements

#### **Track 4: Business Viability**

**Business Case**:
- What's the business model?
- How do we make money?
- What's the unit economics?
- What's the investment required?
- What's the expected ROI?

**Success Metrics**:
- Revenue impact?
- Cost savings?
- Market share?
- User adoption?
- Customer satisfaction?

**Output**:
- Business case summary
- Financial projections
- Success metrics defined
- Assumptions documented
- Risk mitigation plan

---

### Phase 3: Solution Exploration

**Define Solution Approach**:
- What's the proposed solution?
- Why this solution (vs alternatives)?
- What are key capabilities?
- What's our differentiation?
- What are constraints/trade-offs?

**Solution Validation**:
- Does solution address the problem?
- Are there unintended consequences?
- What could go wrong?
- What dependencies exist?
- Is scope realistic?

**Framework: Jobs-to-be-Done (JTBD)**

Every user is "hiring" a product to do a job:
```
User Context: [Situation]
Job to be done: [What they're trying to accomplish]
Struggling with: [Current obstacles]
Using today: [Current solution/workaround]
Desired outcome: [What success looks like]
```

Example:
```
Context: Starting a new tech project
Job: Understand what the market needs before building
Struggling with: How to validate ideas efficiently
Using today: Ad-hoc conversations, guesswork
Desired outcome: Confident product direction with real user validation
```

---

### Phase 4: Success Definition

**Define Success Criteria**:

**Key Performance Indicators (KPIs)**:
- Adoption: % of target users adopted within X months
- Engagement: Usage frequency, feature adoption
- Retention: % of users retained after 90 days
- NPS: Net Promoter Score > X
- Revenue: Revenue per user, ARR impact
- Cost: CAC (Customer Acquisition Cost), Cost per use

**Success Metrics** (Examples):
- User adoption: > 60% of target users active within Q1
- User satisfaction: NPS > 40, CSAT > 4/5
- Business impact: $X revenue within 12 months
- Market share: X% market penetration
- User feedback: Qualitative improvement in user feedback

**Success Timeline**:
- Phase 1 (Weeks 1-4): MVP launch, early users
- Phase 2 (Months 2-3): Growth phase, feedback iteration
- Phase 3 (Months 4-6): Optimization, scale
- Phase 4 (6+ months): Mature product, optimization

---

## Research Methodologies

### User Interview Techniques

#### **5 Whys Method** (Find Root Cause)
```
Problem: Users don't adopt new feature
Why? → They don't know it exists
Why? → No in-app notification sent
Why? → Feature not fully released
Why? → Still in beta testing
Why? → Testing delays due to bugs

Root cause: Testing process delays
```

#### **SMART Goals** (Measurable Success)
- **S**pecific: "Increase user adoption of dashboard"
- **M**easurable: "From 20% to 60% monthly active users"
- **A**chievable: "Within 3 months with current team"
- **R**elevant: "Improves user engagement by 40%"
- **T**ime-bound: "Q1 2026 launch"

#### **Impact vs Effort Matrix**
```
High Impact, Low Effort → DO FIRST
High Impact, High Effort → PLAN CAREFULLY
Low Impact, Low Effort → NICE TO HAVE
Low Impact, High Effort → SKIP
```

---

## Discovery Deliverable: Product Brief

### Product Brief Structure

A **Product Brief** is the output document from discovery, ready to hand off to Product Manager/Team.

**Sections**:
1. **Problem Statement** (1-2 pages)
   - What problem exists?
   - Who has this problem?
   - How big is the problem?
   - Current solutions & gaps

2. **Target Users** (1 page)
   - User personas (3-5 personas)
   - User segments
   - User journey

3. **Market Opportunity** (1 page)
   - Market size (TAM)
   - Market trends
   - Competitive landscape
   - Differentiation

4. **Solution Vision** (1-2 pages)
   - Proposed approach
   - Key capabilities
   - Why this solution
   - Trade-offs considered

5. **Success Metrics** (1 page)
   - KPIs
   - Success criteria
   - Timeline milestones
   - Success definition

6. **Technical Feasibility** (1 page)
   - Technology approach
   - Scalability assessment
   - Risks & mitigation
   - Resource requirements

7. **Business Case** (1 page)
   - Business model
   - Financial projections
   - Expected ROI
   - Investment required

8. **Assumptions & Dependencies** (1 page)
   - Key assumptions
   - What could go wrong
   - Dependencies
   - Risk mitigation

9. **Handoff & Next Steps** (1/2 page)
   - Decision requested
   - Next phase activities
   - Timeline
   - Owner

---

## Quality Indicators

**Good Discovery** ✓:
- ✓ Problem validated with real user research (not assumptions)
- ✓ Data-driven (metrics, research, evidence)
- ✓ Clear target audience (specific, not "everyone")
- ✓ Market opportunity quantified (TAM, SAM, SOM)
- ✓ Competitive advantage identified
- ✓ Success metrics are measurable & achievable
- ✓ Technical feasibility assessed
- ✓ Business case compelling
- ✓ Assumptions documented & validated
- ✓ Ready for handoff to Product Manager

**Poor Discovery** ✗:
- ✗ Problem assumed, not validated with users
- ✗ No research conducted
- ✗ Target audience unclear ("anyone who...")
- ✗ Market opportunity guessed
- ✗ Success metrics vague ("more users", "better experience")
- ✗ No competitive analysis
- ✗ Assumptions not documented
- ✗ Not ready for PM/design handoff
- ✗ Missing key information

---

## Discovery Output Format

### Executive Summary
Brief (1-2 paragraph) overview of:
- Problem discovered
- Target market
- Solution approach
- Expected impact

### Detailed Findings
By research track:
- User Research → Personas, journeys, insights
- Market Research → TAM, trends, competitive landscape
- Technical Feasibility → Technology assessment, risks
- Business Viability → Business case, financials

### Product Brief
Complete document with all sections above, ready for handoff.

### Recommendations
Next steps:
- PM to create PRD based on brief
- Designer to conduct UX research
- Engineering to do technical spike
- Timeline for next phase

---

## Usage Examples

```
/product-discovery "Mobile payment friction in e-commerce" "Mobile users"

/product-discovery "Developer tooling for AI applications" "AI Engineers"

/product-discovery "Sustainability reporting for enterprises" "Large companies"
```

---

## Research Frameworks Used

- **JTBD** (Jobs-to-be-Done): Understanding user goals
- **5 Whys**: Finding root causes
- **SMART Goals**: Measurable success criteria
- **TAM/SAM/SOM**: Market sizing
- **Persona Development**: User profiling
- **User Journey Mapping**: Understanding user flows
- **Competitive Analysis**: Market positioning
- **Impact vs Effort Matrix**: Prioritization

---

## Professional Standards

Based on:
- **Design Thinking**: Problem-first, user-centric approach
- **Lean Startup**: Validated learning, MVP approach
- **Product Discovery**: User research best practices
- **Business Analysis**: BABOK discovery phase
- **User Research**: Qualitative & quantitative methods
