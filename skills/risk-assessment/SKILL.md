---
name: risk-assessment
description: Assess risks in BA documentation - identify threats, impacts, probabilities, và mitigation strategies. Dùng khi planning projects, assessing risks, hay creating mitigation plans.
allowed-tools: Read, Grep, Write
user-invocable: true
---

# Risk Assessment & Management

Assess risks for: `$0`

## Risk Assessment Framework

### 1. Risk Identification

Identify risks across these categories:

**Technical Risks**:
- Architecture complexity
- Technology unfamiliar to team
- Third-party dependency failures
- Security vulnerabilities
- Performance scalability issues
- Data integrity concerns
- Integration complexity

**Business Risks**:
- Market/customer needs change
- Competitive threats
- Scope creep
- Budget constraints
- Resource constraints
- Stakeholder alignment issues
- Regulatory/compliance changes

**Organizational Risks**:
- Key person dependencies
- Skills/expertise gaps
- Team turnover
- Organizational restructuring
- Change management resistance
- Communication breakdown
- Knowledge transfer issues

**Project/Schedule Risks**:
- Timeline overruns
- Scope creep
- Resource unavailability
- Dependency delays
- Estimation inaccuracy
- Testing delays
- Deployment issues

**Compliance & Legal Risks**:
- Regulatory compliance gaps
- Data protection/privacy violations
- Security breaches
- Audit failures
- Legal disputes
- Contractual issues
- Vendor lock-in

**External Risks**:
- Vendor/partner failures
- Third-party API changes
- Infrastructure outages
- Supply chain disruptions
- Market conditions
- Natural disasters

### 2. Risk Analysis

For each identified risk assess:

**Description**:
- Clear, specific description of the risk
- When/how might it occur?
- What triggers would indicate it's happening?

**Probability** (Likelihood):
- **High** (>60%): Likely to occur
- **Medium** (30-60%): Possible to occur
- **Low** (<30%): Unlikely but possible

**Impact** (Consequence if occurs):
- **Critical** (4): Project failure, major financial loss, serious compliance issue
- **High** (3): Significant delay, major budget overrun, major functionality lost
- **Medium** (2): Noticeable impact, some delay, some budget impact
- **Low** (1): Minor impact, easily recovered from

**Risk Score**:
- Score = Probability Score × Impact Score
- High (9-16): Critical priority
- Medium (4-8): Important, plan mitigation
- Low (1-3): Monitor, accept

**Current State**:
- What's being done to prevent/minimize already?
- Effectiveness of current measures: High/Medium/Low

### 3. Risk Prioritization

Create risk register:

```
ID | Risk Description | Category | Prob | Impact | Score | Priority | Current Mitigation | Status
---|---|---|---|---|---|---|---|---
R1 | [description] | Technical | M | H | 9 | Critical | [mitigation] | Active
R2 | ... | ... | ... | ... | ... | ... | ... | ...
```

Prioritize by:
1. Risk score (highest first)
2. Critical path impact (blocks other work)
3. Irreversibility (can't recover easily)
4. Lead time to mitigate (must act soon)

### 4. Risk Mitigation Strategies

For each top risk, develop strategy:

**Mitigation Options**:
1. **Avoid**: Eliminate the risk entirely
   - Example: Don't use risky technology → switch to proven alternative
   - Cost: May impact scope/timeline

2. **Reduce**: Lower probability or impact
   - Example: Risk of key person loss → Cross-train backup person
   - Example: Risk of budget overrun → Implement project controls
   - Most common approach

3. **Transfer**: Shift risk to third party
   - Example: Use insurance, SLA contracts, vendor guarantees
   - Cost: Insurance/contract costs

4. **Accept**: Live with the risk
   - When: Cost of mitigation > cost of risk
   - When: Risk is small/low-probability
   - Requires explicit decision & contingency plan

**Mitigation Plan**:
- **Action**: Specific, measurable action to take
- **Owner**: Who's responsible
- **Timeline**: When to complete
- **Resources**: What's needed
- **Success Criteria**: How do we know it's effective?
- **Cost**: What will it cost?

### 5. Contingency Planning

For top risks, develop contingency:

**Contingency Trigger**:
- What event indicates the risk is materializing?
- How will we detect it?
- Who will monitor?

**Contingency Response**:
- If risk occurs, what's the fallback plan?
- What resources needed?
- Timeline to implement?
- Who decides to invoke contingency?

**Contingency Reserve** (Risk Budget):
- Time contingency: Extra schedule buffer (typically 10-20%)
- Cost contingency: Extra budget reserve (typically 10-30%)
- Resource contingency: Extra people available if needed

### 6. Risk Monitoring & Control

**Key Risk Indicators** (Leading indicators):
- Early warning signs the risk is happening
- Metrics to track
- Threshold values

**Monitoring Plan**:
- Frequency: Weekly/Bi-weekly/Monthly?
- Responsibility: Who tracks each risk?
- Escalation: When to raise alarm?
- Review: When to review risk register?

**Escalation Criteria**:
- When risk probability increases → escalate
- When impact increases → escalate
- When mitigation not working → escalate
- New risks identified → add to register

### 7. Risk Register Status Tracking

Track each risk:
- **Open**: Active risk, being monitored
- **Mitigating**: Mitigation actions in progress
- **Resolved**: Risk eliminated or accepted, no longer active
- **Closed**: Risk occurred and resolved, learning captured

## Risk Assessment Output

Provide:

### 1. Executive Summary (1-2 pages)
- Top 3-5 risks (highest priority)
- Overall risk level: Low/Medium/High/Critical
- Recommended actions
- Contingency budget recommendation

### 2. Risk Register
Complete table with all identified risks, analysis, and mitigations

### 3. Risk Heat Map
Visual representation of risks by probability × impact

### 4. Mitigation Plans
Detailed mitigation strategy for top 5 risks with:
- Risk description
- Current state assessment
- Mitigation strategy (Avoid/Reduce/Transfer/Accept)
- Specific actions
- Owner and timeline
- Success criteria

### 5. Contingency Plans
Contingency response for 3-5 top risks:
- Triggers
- Fallback approach
- Timeline & resources
- Decision maker

### 6. Monitoring Plan
- Key risk indicators to track
- Monitoring frequency
- Responsibility
- Escalation criteria

### 7. Risk Metrics
- Total identified risks: X
- Critical risks: X
- High risks: X
- Mitigation effectiveness: X%
- Trends: Increasing/stable/decreasing?

## Usage Examples

```
/risk-assessment project-plan.md
/risk-assessment roadmap.md
/risk-assessment scope.md
```

## Risk Assessment Standards

Use:
- PMBOK (Project Management Body of Knowledge)
- ISO 31000 (Risk Management)
- Risk probability/impact matrix
- Risk register format
- Qualitative and quantitative analysis

## Risk Categories Checklist

- ☐ Technical risks
- ☐ Business risks
- ☐ Organizational risks
- ☐ Project/schedule risks
- ☐ Compliance/legal risks
- ☐ External/vendor risks
- ☐ Resource risks
- ☐ Quality risks
