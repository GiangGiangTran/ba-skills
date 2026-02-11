# Requirement Template

## Requirement Information

- **Requirement ID**: REQ-XXX
- **Title**: [Requirement title]
- **Type**: Functional / Non-Functional / Constraint
- **Priority**: Must Have / Should Have / Could Have / Won't Have
- **Created**: [Date]
- **Owner**: [Name]
- **Status**: Draft / Review / Approved / Implemented

## Description

[Clear, detailed description of what is needed. Avoid vague terms like "user-friendly", "fast", "scalable".]

## Business Context

- **Why**: Why do we need this? What business problem does it solve?
- **User**: Who needs this? What user role/persona?
- **Benefit**: What value does it deliver?

## Acceptance Criteria

Given-When-Then format (Gherkin/BDD):

```
Given [initial context]
When [user action]
Then [expected outcome]
```

Example:
```
Given a user is on the login page
When the user enters valid credentials and clicks Login
Then the user is logged in and redirected to the dashboard
```

Alternative format (numbered):
1. [Specific, measurable criterion]
2. [Specific, measurable criterion]
3. [Specific, measurable criterion]

## Constraints & Assumptions

**Constraints**:
- [Limitation or boundary]
- [Technical limitation]
- [Timeline constraint]

**Assumptions**:
- [Something we assume is true]
- [External dependency assumed to be in place]

## Dependencies

- Internal: [Required REQs, components, or work]
- External: [Third-party systems, data sources]
- Blocking: [Does this block other requirements?]

## Effort & Complexity

- **Complexity**: Low / Medium / High / Extra High
- **Estimated Effort**: [X person-days/weeks]
- **Dependencies**: [Other requirements this depends on]
- **Risk Level**: Low / Medium / High

## Notes

[Any additional context, discussions, or clarifications]

## Approval

- Business Owner: _____________ Date: _____
- Technical Lead: _____________ Date: _____
- Project Manager: _____________ Date: _____
