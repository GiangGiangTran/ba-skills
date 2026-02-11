---
name: solution-design
description: Design solution architecture - conduct parallel research (market, competitive, technical, user), create design docs, system diagrams, technical specifications, implementation plans. Use when designing systems, creating architecture, conducting design research, or planning technical approach.
allowed-tools: Read, Write, Grep, Bash
context: fork
agent: Explore
argument-hint: [requirements-file] [system-name]
user-invocable: true
---

# Solution Design & Architecture

Create solution design for requirements: `$0`
System/Project name: `$1`

## Phase 0: Parallel Research (NEW)

Before designing, conduct research across 4 parallel tracks for comprehensive understanding:

### **Research Track 1: Market Research**

Understand market context:
- **Market Size**: TAM (Total Addressable Market), SAM (Serviceable Available Market)
- **Trends**: Industry trends, emerging technologies, market direction
- **Competitive Landscape**: Existing solutions, competitor features, market gaps
- **Regulatory/Compliance**: Any regulatory constraints or compliance requirements

**Output**:
- Market opportunity assessment
- Competitive positioning matrix
- Regulatory/compliance checklist

---

### **Research Track 2: Competitive Analysis**

Deep dive on competitive landscape:
- **Direct Competitors**: Who solves this problem today?
- **Feature Comparison**: What features do they offer?
- **Competitive Advantage**: What can we do better/differently?
- **Market Positioning**: How do we position against them?
- **Gaps & Opportunities**: What's missing in market?

**Output**:
- Competitive feature matrix
- Positioning strategy
- Opportunity identification

---

### **Research Track 3: Technical Feasibility**

Evaluate technical approach:
- **Technology Options**: What tech stacks are available?
- **Scalability Assessment**: Can we scale to required load?
- **Technical Risks**: What are technical risks/constraints?
- **Resource Requirements**: What skills/resources needed?
- **Timeline Realism**: Is timeline achievable?

**Output**:
- Technology options evaluation
- Risk assessment
- Resource plan
- Effort estimation

---

### **Research Track 4: User Needs & Validation**

Validate design against user needs:
- **User Research**: What do users actually need?
- **Use Cases**: What are primary use cases?
- **User Feedback**: Any design feedback from users?
- **Adoption Risk**: What could prevent adoption?
- **Success Metrics**: How do users define success?

**Output**:
- User research findings
- Use case documentation
- Adoption risk mitigation
- Success metrics definition

---

### **Integration: Research Findings into Design**

After completing 4 parallel research tracks:
1. Synthesize findings across tracks
2. Identify conflicts/dependencies between tracks
3. Validate design decisions against research
4. Document assumptions and validations
5. Highlight risks identified in research
6. Plan mitigation strategies

---

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
