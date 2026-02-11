---
name: solution-design
description: Design solution architecture - create design docs, system diagrams, technical specifications, implementation plans. Dùng khi designing systems, creating architecture, hay planning technical approach.
allowed-tools: Read, Write, Grep
argument-hint: [requirements-file] [system-name]
user-invocable: true
---

# Solution Design & Architecture

Create solution design for requirements: `$0`
System/Project name: `$1`

## Design Document Structure

### 1. Overview & Problem Statement

- **Problem Statement**: What problem are we solving?
- **Solution Approach**: High-level approach to solve it
- **Key Benefits**: What value does this deliver?
- **Success Criteria**: How do we know it's successful?
- **Scope**: What's included/excluded
- **Assumptions**: Key assumptions about the solution

### 2. Architecture & Design

**System Components**:
- List main components/modules
- Describe responsibility of each
- Show component interactions (text or ASCII diagram)

**Data Flow**:
- Show data moving through system
- Identify data stores
- Show integration points
- Describe data transformations

**Technology Stack Rationale**:
For each major technology choice:
- Option A vs Option B → Chosen: C
- Justification: Why this choice?
- Alternatives considered

**Architecture Decisions**:
- Decision ID
- Context: What problem does this solve?
- Options considered
- Decision: Which option chosen?
- Rationale: Why?
- Consequences: What's the impact?
- Related decisions

### 3. Design Details

**System Interfaces**:
- User interfaces (sketches/description)
- API endpoints (with methods, parameters, responses)
- Integration interfaces (with external systems)

**Database Design**:
- Entity-relationship diagram (or description)
- Key tables/collections
- Key fields and relationships
- Data consistency requirements

**Security Architecture**:
- Authentication mechanism
- Authorization model
- Data protection (encryption, etc.)
- Compliance requirements

**Scalability & Performance**:
- Expected load/growth
- Scalability approach (horizontal/vertical)
- Performance targets (response time, throughput)
- Caching strategy
- Database optimization

### 4. Implementation Plan

**Phases**:
```
Phase 1 (Weeks 1-2): [Components to build]
- Component A: Component A details
- Component B: Component B details
- Deliverables: [list]
- Dependencies: [on what]

Phase 2 (Weeks 3-4): [Next components]
- ...

Phase N (Final Phase): Integration & deployment
```

**Sequencing Logic**:
- Why this order?
- Critical path items?
- Parallel work opportunities?
- Integration points between phases?

### 5. Risks & Mitigations

| Risk | Category | Probability | Impact | Risk Score | Mitigation Strategy | Owner |
|------|----------|-------------|--------|------------|-------------------|-------|
| Technology unfamiliar to team | Technical | Medium | High | 8 | Training, pair programming, proof of concept | PM |
| Third-party API availability | External | Low | Critical | 8 | Fallback strategy, offline mode, backup provider | Dev Lead |

### 6. Success Metrics & KPIs

**Technical Metrics**:
- Response time: < 500ms
- Availability: 99.9%
- Defect rate: < 2%
- Test coverage: > 80%

**Business Metrics**:
- User adoption: > 80% of target users
- User satisfaction: > 4.0/5.0 stars
- Business ROI: Achieved within X months
- Cost savings/revenue impact: [metrics]

**User Experience Metrics**:
- Task completion rate: > 95%
- Time to completion: < [target]
- Error rate: < [target]

### 7. Testing Strategy

**Approach**:
- Unit testing (component-level)
- Integration testing (multiple components)
- System testing (end-to-end)
- Performance testing
- Security testing
- User acceptance testing (UAT)

**Test Coverage**:
- Happy path (normal use cases)
- Edge cases (boundary conditions)
- Error scenarios (fault handling)
- Integration scenarios (system interactions)

### 8. Deployment & Rollout

**Deployment Approach**:
- Development → Staging → Production
- Rollout strategy: Big bang, phased, canary, blue-green
- Rollback plan: How to undo if needed
- Communication plan: Who needs to know what

**Post-Deployment**:
- Monitoring plan: What to monitor
- Support plan: How to handle issues
- Feedback collection: How to gather user feedback

### 9. Appendices

- **Detailed API Specifications** (all endpoints)
- **Database Schema** (DDL scripts)
- **Security Architecture** (detailed)
- **Disaster Recovery Plan**
- **Operations Runbook** (how to operate the system)
- **Known Limitations & Future Enhancements**

## Design Output

Provide:

### 1. Executive Summary (1 page)
Problem, approach, benefits, timeline, success criteria

### 2. Architecture Overview
High-level diagram or description of system components and interactions

### 3. Design Decisions
Key decisions with rationale and tradeoffs

### 4. Implementation Roadmap
Phase-by-phase breakdown with timeline and dependencies

### 5. Risk Assessment
Top 5 risks with mitigation strategies

### 6. Appendices
Detailed technical specifications

## Usage Examples

```
/solution-design requirements.md "Customer Portal"
/solution-design scope.md "AI Model API"
/solution-design features.md "Mobile App"
```

## Design Principles

Follow:
- SOLID principles (for software design)
- DRY (Don't Repeat Yourself)
- KISS (Keep It Simple, Stupid)
- YAGNI (You Aren't Gonna Need It)
- Separation of Concerns
- Loose Coupling, High Cohesion

## Standards & References

- IEEE 1016: Software Design Descriptions
- UML (Unified Modeling Language)
- C4 Model: Context, Container, Component, Code
- Design patterns (when applicable)
