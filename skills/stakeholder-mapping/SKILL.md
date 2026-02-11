---
name: stakeholder-mapping
description: Create stakeholder analysis - identify stakeholders, their interests, influence, power matrix, communication plan, engagement strategy. Dùng khi planning engagement, analyzing stakeholders, hay creating communication strategy.
allowed-tools: Read, Write, Grep
argument-hint: [project-name] [scope]
user-invocable: true
---

# Stakeholder Analysis & Mapping

Analyze stakeholders for: `$0`
Project/Scope: `$1`

## Stakeholder Analysis Framework

### 1. Stakeholder Identification

Identify who has:
- **Interest**: Affected by or interested in the project outcome
- **Influence**: Can impact project success
- **Authority**: Can make decisions or approve deliverables
- **Impact**: Directly impacted by changes or deliverables

**Typical Stakeholder Groups**:

**Internal Stakeholders**:
- Executive sponsors (C-level, board members)
- Project manager/product manager
- Business owners/process owners
- Department heads
- End users (different user types)
- IT/technical team
- QA/testing team
- Operations/support team
- Compliance/risk team
- Finance/budgeting team

**External Stakeholders**:
- Customers
- Vendors/partners
- Third-party integrators
- Regulatory bodies
- Industry bodies
- Community/public

**Questions to identify stakeholders**:
- Who makes decisions about this project?
- Who will be affected by the outcome?
- Who has budget authority?
- Who will use/operate the solution?
- Who must approve deliverables?
- Who can block the project?
- Who can influence senior leadership?

### 2. Stakeholder Analysis Matrix

Create stakeholder profile for each key stakeholder:

```
Stakeholder | Role | Department | Power | Interest | Expectations | Concerns | Influence | Communication Preference
---|---|---|---|---|---|---|---|---
John Smith | CTO | Technology | High | High | Performance, scalability, security | Timeline risk, resource constraints | High | Monthly executive briefing
Jane Doe | End user | Sales | Medium | High | Ease of use, training, support | Adoption, learning curve | Low | Email updates, training sessions
```

**Power/Influence Scale**:
- **High**: Can make decisions, approve budget, block project
- **Medium**: Can influence decisions, important opinion
- **Low**: Affected but limited influence on decisions

**Interest Level**:
- **High**: Directly affected, wants regular updates
- **Medium**: Somewhat affected, wants occasional updates
- **Low**: Peripherally affected, basic awareness only

### 3. Power/Interest Matrix (Salience Model)

Position each stakeholder on 2×2 matrix:

```
                HIGH INTEREST
                     |
HIGH POWER    |  MANAGE CLOSELY  |  KEEP SATISFIED  |
              |  (Top-left)       |  (Top-right)     |
              |__________________|__________________|
              |  MONITOR          |  KEEP INFORMED   |
LOW POWER     |  (Bottom-left)    |  (Bottom-right)  |
              |__________________|__________________|
              LOW INTEREST        HIGH INTEREST
```

**Manage Closely** (High Power, High Interest):
- Key stakeholders requiring proactive management
- Regular updates and involvement
- Address concerns immediately
- Examples: Sponsor, business owner, end users

**Keep Satisfied** (High Power, Low Interest):
- Influential stakeholders but not closely involved
- Keep satisfied to prevent opposition
- Regular high-level updates
- Examples: C-suite executives

**Keep Informed** (Low Power, High Interest):
- Affected by project but limited influence
- Keep informed and engaged
- Regular detailed updates
- Examples: End users, support staff

**Monitor** (Low Power, Low Interest):
- Minimal engagement needed
- Basic awareness of status
- Examples: Some vendors, external partners

### 4. Stakeholder Engagement Strategy

For each key stakeholder or group define:

**Communication Plan**:
- **Frequency**: Weekly/Bi-weekly/Monthly/Quarterly
- **Format**: Meetings/Email/Status reports/Presentations/Workshops
- **Content**: Updates/Feedback requests/Decisions/Issues/Training
- **Owner**: Who manages relationship

**Information Needs**:
- What information does stakeholder need?
- How often?
- Level of detail (executive summary vs detailed)?
- Format preference?

**Engagement Activities**:
- Kickoff meetings
- Requirements workshops
- Design reviews
- Progress reviews
- Testing/UAT participation
- Training sessions
- Feedback sessions

**Escalation Path**:
- Who to escalate issues to?
- When to escalate?
- How are conflicts resolved?

**Success Criteria**:
- Stakeholder satisfaction > X%
- Timely feedback and approvals
- Low resistance to changes
- Adoption targets met

### 5. Expectations & Concerns

Document for each stakeholder:

**Expectations**:
- What does stakeholder want from project?
- What success looks like for them?
- What benefits are they expecting?
- What problems should be solved?
- Timeline expectations?

**Concerns**:
- What worries does stakeholder have?
- What could fail from their perspective?
- What resistance might they show?
- What constraints matter to them?
- What trade-offs are unacceptable?

### 6. Change Management & Adoption

**Stakeholder Readiness**:
- Is stakeholder ready for change?
- Training needs?
- Resistance factors?
- Mitigation strategy?

**Adoption Strategy**:
- How to ensure adoption?
- Training approach
- Support after launch
- Success metrics
- Communication timeline

**Key Messages**:
- For executives: Business value, ROI, timeline
- For users: Benefits, ease of use, support available
- For IT: Technical requirements, scalability, support needs
- For operations: Change management, support model, runbooks

### 7. Stakeholder Communication Calendar

Create timeline:
```
Date | Stakeholder | Activity | Format | Owner
---|---|---|---|---
Week 1 | All | Project kickoff | Workshop | PM
Week 2 | Execs | Sponsor briefing | Meeting | PM
Week 3 | Users | Requirements gathering | Workshops | BA
```

### 8. Conflict Resolution & Decision Authority

**Governance**:
- Who makes final decisions? (Decision authority)
- What's the escalation path?
- How are conflicts resolved?
- When/how often are steering committee meetings?

**Decision Framework**:
- Requirements scope: Who decides?
- Budget trade-offs: Who decides?
- Timeline trade-offs: Who decides?
- Quality trade-offs: Who decides?

## Stakeholder Analysis Output

Provide:

### 1. Executive Summary
- Key stakeholder groups (3-5 main groups)
- Top 3-5 individual stakeholders
- Overall engagement strategy
- Key success factors

### 2. Stakeholder Register
Complete table with all stakeholders:
- Name/role
- Department
- Power, Interest levels
- Expectations & concerns
- Communication strategy
- Owner

### 3. Power/Interest Matrix
Visual 2×2 matrix showing stakeholder positions

### 4. Detailed Stakeholder Profiles
For top 10 stakeholders:
- Role & responsibilities
- Interests & concerns
- Communication preference
- Engagement strategy
- Key messages

### 5. Communication Plan
- By stakeholder group
- Frequency, format, content
- Owner responsibility
- Success criteria

### 6. Change Management Plan
- Readiness assessment
- Resistance factors & mitigations
- Training approach
- Adoption metrics
- Timeline

### 7. Governance Structure
- Decision authority
- Escalation path
- Steering committee charter (if applicable)

### 8. Stakeholder Engagement Timeline
Calendar of key engagement activities

## Usage Examples

```
/stakeholder-mapping "Q1 Platform Project" "Digital transformation"
/stakeholder-mapping "Mobile App Rollout" "New feature launch"
/stakeholder-mapping "System Migration" "Legacy system replacement"
```

## Professional Standards

Use:
- BABOK stakeholder analysis framework
- Salience Model (Power/Interest/Legitimacy)
- Stakeholder Register format
- Communication matrix
- Engagement planning best practices

## Key Stakeholder Questions to Answer

- ☐ Who are all stakeholders (internal/external)?
- ☐ What is their power/influence level?
- ☐ What is their interest level?
- ☐ What are their expectations?
- ☐ What are their concerns?
- ☐ How should we engage them?
- ☐ How often should we communicate?
- ☐ Who has decision authority?
- ☐ What could derail the project from their perspective?
- ☐ How do we measure engagement success?
