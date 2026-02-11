---
name: requirement-analysis
description: Analyze BA requirements - identify gaps, dependencies, priorities, complexity, risk, effort estimation. Dùng khi analyzing requirements, prioritizing features, hay breaking down scope.
allowed-tools: Read, Grep, Write
context: fork
agent: Explore
user-invocable: true
---

# Requirement Analysis & Prioritization

Analyze requirements from: `$0`

## Analysis Framework

### 1. Requirement Classification

Phân loại từng requirement theo:

**By Type**:
- **Functional**: User-facing features, business logic
- **Non-Functional**: Performance, security, scalability, usability
- **Constraint**: Technical, business, regulatory constraints

**By Priority (MoSCoW)**:
- **Must Have**: Critical for success, cannot deliver without
- **Should Have**: Important, adds significant value
- **Could Have**: Nice-to-have, low priority
- **Won't Have**: Out of scope for this phase

**By Urgency**:
- **Phase 1 (Critical)**: Must do immediately
- **Phase 2 (High)**: Do early
- **Phase 3 (Medium)**: Can defer
- **Future (Low)**: Long-term consideration

### 2. Dependency Analysis

Identify:
- **Internal Dependencies**: Requirement A depends on B
- **External Dependencies**: Third-party systems, data sources, integrations
- **Data Flow Dependencies**: Data passed between requirements
- **Sequence Dependencies**: Order matters (B must be done after A)

### 3. Complexity & Effort Assessment

For each requirement estimate:

**Scope**:
- Small (1-5 dev days)
- Medium (1-2 weeks)
- Large (2-4 weeks)
- Extra Large (4+ weeks)

**Risk Level**:
- Low: Well-understood, similar solutions exist
- Medium: Some uncertainty, standard technology
- High: Novel, complex, high uncertainty
- Critical: Major risk to project

**Implementation Effort**:
- Low: 1 person × 1-3 days
- Medium: 1-2 people × 1-2 weeks
- High: 2+ people × 2-4 weeks
- Extra: 3+ people × 4+ weeks

**Dependencies**:
- None: Can start immediately
- Internal: Depends on other requirements
- External: Depends on external systems
- Blocking: Blocks other requirements

### 4. Gap Analysis

Identify:
- Missing requirements
- Unstated assumptions
- Incomplete acceptance criteria
- Incomplete stakeholder coverage
- Missing non-functional requirements
- Unclear edge cases
- Unclear error handling

### 5. Impact Analysis

For each requirement assess:
- Business Impact: High/Medium/Low
- User Impact: High/Medium/Low
- Technical Impact: High/Medium/Low
- Resource Impact: High/Medium/Low
- Risk Impact: High/Medium/Low

### 6. Priority Matrix

Sắp xếp requirement theo 2x2 matrix:
- Axes: Business Value (Low→High) × Implementation Effort (Low→High)
- Quick Wins: High value, Low effort (Do first)
- Major Projects: High value, High effort (Plan carefully)
- Fillers: Low value, Low effort (After main work)
- Time Sinks: Low value, High effort (Avoid or defer)

## Analysis Output

Provide structured analysis:

### 1. Requirement Matrix (CSV format)
```
ReqID | Description | Type | Priority | Effort | Risk | Dependencies | Gaps | Notes
```

### 2. Dependency Map
Show which requirements depend on which (text or ASCII diagram)

### 3. Priority Recommendations
- Top 10 requirements by priority
- Suggested implementation phases
- Quick wins (do these first)
- Critical path items

### 4. Risk & Complexity Summary
- Top 3 most complex requirements
- Top 3 highest risk requirements
- Recommendations to reduce risk/complexity

### 5. Gaps & Missing Items
- List identified gaps
- Questions to stakeholders
- Recommendations

### 6. Effort & Timeline Estimate
- Total effort estimate (person-weeks)
- Recommended phase breakdown
- Critical resource needs
- Timeline estimate (weeks)

### 7. Quality Score
- Requirements clarity: _/10
- Completeness: _/10
- Feasibility: _/10
- Overall: _/10

## Usage Examples

```
/requirement-analysis scope.txt
/requirement-analysis requirements.md
```

## Professional Standards

Use:
- BABOK framework
- Agile user story format: "As a [user], I want [feature], so that [benefit]"
- SMART criteria (Specific, Measurable, Achievable, Relevant, Time-bound)
- Acceptance Criteria format (Gherkin/BDD)
