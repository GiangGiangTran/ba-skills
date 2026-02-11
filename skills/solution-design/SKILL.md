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

## Phase 0: Parallel Research (Optional)

Before designing, optionally conduct research across 4 parallel tracks:

**4 Research Tracks**:
1. **Market Research**: Market size (TAM/SAM), trends, regulations
2. **Competitive Analysis**: Competitors, features, positioning, gaps
3. **Technical Feasibility**: Tech options, scalability, risks
4. **User Needs**: User research, use cases, adoption risks

**Integration**: Synthesize findings → inform design decisions

**See references/parallel-research-guide.md for detailed framework**

---

## Design Document Structure

### 1. Overview & Problem Statement

- **Problem Statement**: What problem are we solving?
- **Solution Approach**: High-level approach to solve it
- **Key Benefits**: What value does this deliver?
- **Success Criteria**: How do we know it's successful?
- **Scope**: What's included/excluded
- **Assumptions**: Key assumptions about the solution

---

### 2. Architecture & Design

**System Components**:
- List main components/modules
- Describe responsibility of each
- Show component interactions (diagram or text)

**Data Flow**:
- Show data moving through system
- Identify data stores
- Show integration points

**Technology Stack Rationale**:
- Option A vs Option B → Chosen: C
- Justification: Why this choice?
- Alternatives considered

**Architecture Decisions**:
- Decision ID + Context
- Options considered
- Decision taken + Rationale
- Consequences + Related decisions

---

### 3. Design Details

**System Interfaces**:
- User interfaces (sketches/description)
- API endpoints (methods, parameters, responses)
- Integration interfaces (external systems)

**Database Design**:
- Entity-relationship diagram (or description)
- Key tables/collections and relationships
- Data consistency requirements

**Security Architecture**:
- Authentication & Authorization mechanism
- Data protection (encryption, etc.)
- Compliance requirements

**Scalability & Performance**:
- Expected load/growth
- Scalability approach (horizontal/vertical)
- Performance targets (response time, throughput)
- Caching strategy
- Database optimization

---

### 4. Implementation Plan

**Phases**:
```
Phase 1 (Weeks 1-2): [Components to build]
- Component A: description
- Component B: description
- Deliverables: [list]
- Dependencies: [list]

Phase 2 (Weeks 3-4): [Next components]
...

Phase N: Integration & deployment
```

**Sequencing Logic**:
- Why this order?
- Critical path items?
- Parallel work opportunities?
- Integration points between phases?

---

### 5. Risks & Mitigations

| Risk | Category | Probability | Impact | Mitigation |
|------|----------|-------------|--------|-----------|
| [Risk 1] | [Category] | [High/Med/Low] | [High/Med/Low] | [Plan] |
| [Risk 2] | [Category] | [High/Med/Low] | [High/Med/Low] | [Plan] |

---

### 6. Success Metrics & KPIs

**Technical Metrics**:
- Response time: < X ms
- Availability: X% uptime
- Defect rate: < X%
- Test coverage: > X%

**Business Metrics**:
- User adoption: > X%
- User satisfaction: > X/5
- Revenue impact: $X
- Market share: X%

---

### 7. Testing Strategy

- Unit testing (component-level)
- Integration testing (multiple components)
- System testing (end-to-end)
- Performance testing
- Security testing
- User acceptance testing (UAT)

---

### 8. Deployment & Rollout

**Approach**: Big bang / Phased / Canary / Blue-green

**Rollout Strategy**:
- Stage 1: [Date/Plan]
- Stage 2: [Date/Plan]
- Rollback plan: [If needed]

**Post-Deployment**:
- Monitoring plan
- Support plan
- Feedback collection

---

### 9. Appendices

- **Detailed API Specifications**
- **Database Schema** (DDL scripts)
- **Security Architecture** (detailed)
- **Disaster Recovery Plan**
- **Operations Runbook**
- **Known Limitations & Future Enhancements**

---

## Usage Examples

```
/solution-design requirements.md "Customer Portal"
/solution-design scope.md "AI Model API"
/solution-design features.md "Mobile App"
```

---

## Design Principles

Follow:
- **SOLID** principles (for software design)
- **DRY** (Don't Repeat Yourself)
- **KISS** (Keep It Simple, Stupid)
- **YAGNI** (You Aren't Gonna Need It)
- **Separation of Concerns**
- **Loose Coupling, High Cohesion**

---

## Standards & References

- **IEEE 1016**: Software Design Descriptions
- **UML**: Unified Modeling Language
- **C4 Model**: Context, Container, Component, Code

**For Phase 0 Parallel Research**:
- 📚 `references/parallel-research-guide.md` - Detailed 4-track research framework

**For Design Documentation**:
- 📋 `assets/design-doc-template.md` - Complete design document template
