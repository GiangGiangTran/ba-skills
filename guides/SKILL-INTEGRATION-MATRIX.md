# BA Skills Integration Matrix

**Shows exactly which skills interact, what they consume/produce, and dependencies**

---

## 🎯 Skills Overview

| Skill | Primary Use | Input Type | Output Type | Context |
|-------|------------|-----------|------------|---------|
| **product-discovery** | Validate problem, discover market opportunity | Business requirement | Problem statement + research insights | Early stage, exploratory |
| **interview-guide** | Plan & structure user interviews | Target audience + interview type | Interview guide + structured feedback | Discovery phase |
| **requirement-analysis** | Prioritize & estimate requirements | Product brief + user feedback | Ranked requirements with effort/complexity | Planning phase |
| **stakeholder-mapping** | Identify stakeholders & plan engagement | Organization + user groups | Stakeholder register + communication plan | Planning phase |
| **solution-design** | Create system architecture & design | Requirements + constraints | Architecture document + tech rationale | Design phase |
| **document-review** | Validate quality & completeness | Any document | Quality assessment + recommendations | After each major output |
| **risk-assessment** | Identify & prioritize risks | Design document + requirements | Risk register + mitigation plans | Late planning/design |

---

## 🔄 Skill Dependencies & Workflow

```
Week 1-2: DISCOVERY
┌─────────────────────────────────────────────────┐
│                                                 │
│  Business Requirement                           │
│    ↓                                            │
│  /product-discovery                             │
│    ├─→ Problem Statement ✓                      │
│    ├─→ 4 Research Insights ✓                    │
│    └─→ Market Opportunity ✓                     │
│         ↓                                       │
│    [Create: product-brief-v1.md]                │
│         ↓                                       │
│    /interview-guide (plan)                      │
│    [Conduct 8 interviews, record insights]      │
│         ↓                                       │
│    /document-review                             │
│    [Validate product-brief-v1.md]               │
│         ↓                                       │
│    product-brief-v2.md ✓ (Ready for Analysis)   │
│                                                 │
└─────────────────────────────────────────────────┘
```

```
Week 3-4: ANALYSIS
┌─────────────────────────────────────────────────┐
│                                                 │
│  product-brief-v2.md (Input)                    │
│    ├─→ /requirement-analysis                    │
│    │    ├─→ 50+ Requirements ✓                  │
│    │    ├─→ Priority Matrix (Must/Should/...)   │
│    │    ├─→ Effort Estimates ✓                  │
│    │    └─→ Complexity Assessment ✓             │
│    │         ↓                                  │
│    │    [Create: requirements-matrix.csv]       │
│    │                                            │
│    └─→ /stakeholder-mapping                     │
│         ├─→ 20 Stakeholders ✓                   │
│         ├─→ Power/Interest Matrix ✓             │
│         ├─→ Communication Plan ✓                │
│         └─→ Change Management Strategy ✓        │
│              ↓                                  │
│         [Create: stakeholder-analysis.md]       │
│                                                 │
│  Outputs Ready for Design Phase ✓               │
│                                                 │
└─────────────────────────────────────────────────┘
```

```
Week 5-6: DESIGN
┌─────────────────────────────────────────────────┐
│                                                 │
│  Inputs:                                        │
│  - requirements-matrix.csv                      │
│  - stakeholder-analysis.md                      │
│  - interview-results.md                         │
│    ↓                                            │
│  /solution-design [Phase 0: 4 Parallel Tracks]  │
│    │                                            │
│    ├─ Track 1: Market Research                  │
│    │  ├─ TAM/SAM/SOM analysis                   │
│    │  └─ Pricing strategy options               │
│    │                                            │
│    ├─ Track 2: Competitive Analysis             │
│    │  ├─ Feature comparison matrix              │
│    │  └─ Gap identification                     │
│    │                                            │
│    ├─ Track 3: Technical Feasibility            │
│    │  ├─ Tech stack options                     │
│    │  └─ Scalability assessment                 │
│    │                                            │
│    └─ Track 4: User Needs Validation            │
│       ├─ Design feedback from users             │
│       └─ Adoption risk assessment               │
│                                                 │
│  Synthesis:                                     │
│  ├─ Architecture Diagram ✓                      │
│  ├─ System Components ✓                         │
│  ├─ Technology Stack Rationale ✓                │
│  ├─ Implementation Roadmap (3 phases) ✓         │
│  └─ Data Flow Specification ✓                   │
│    ↓                                            │
│  [Create: design-document-v1.md]                │
│    ↓                                            │
│  /document-review                               │
│  [Check completeness, architecture clarity]     │
│    ↓                                            │
│  design-document-v2.md ✓ (Ready for Build)      │
│                                                 │
└─────────────────────────────────────────────────┘
```

```
Week 6-7: RISK & COMMUNICATION
┌─────────────────────────────────────────────────┐
│                                                 │
│  Inputs:                                        │
│  - design-document-v2.md                        │
│  - requirements-matrix.csv                      │
│  - stakeholder-analysis.md                      │
│    ↓                                            │
│  /risk-assessment                               │
│    ├─→ Risk Identification (20+ risks) ✓        │
│    ├─→ Risk Analysis (Probability × Impact)     │
│    ├─→ Top 5 Risks with Mitigation ✓            │
│    ├─→ Contingency Budget (2 weeks + 20%) ✓     │
│    ├─→ Monitoring Plan ✓                        │
│    └─→ Escalation Criteria ✓                    │
│         ↓                                       │
│    [Create: risk-register.md]                   │
│         ↓                                       │
│  Communication Planning:                        │
│  - Executive briefing (CEO/CTO)                 │
│  - Team kickoff (Product + Engineering)         │
│  - Weekly/Bi-weekly update schedule             │
│         ↓                                       │
│    [Create: communication-plan.md]              │
│         ↓                                       │
│  READY TO EXECUTE ✅                            │
│                                                 │
└─────────────────────────────────────────────────┘
```

---

## 📊 Data Flow: Inputs → Skills → Outputs

```
DISCOVERY PHASE
═════════════════════════════════════════════════════════════════

Business Requirement (Sponsor input)
    ↓ [/product-discovery]
Problem Statement + Market Opportunity
    ↓
product-brief-v1.md
    ↓ [Interview Planning]
Interview Guide prepared
    ↓ [Conduct 8 interviews - Manual work]
Interview Insights & Transcripts
    ↓
product-brief-v2.md
    ↓ [/document-review]
Validated Product Brief ✓


ANALYSIS PHASE
═════════════════════════════════════════════════════════════════

product-brief-v2.md (from Discovery)
    ├──→ [/requirement-analysis]
    │    └──→ requirements-matrix.csv (50+ requirements)
    │         └──→ requirement-analysis.md
    │
    ├──→ [/stakeholder-mapping]
    │    └──→ stakeholder-analysis.md (20+ stakeholders)
    │         └──→ communication-plan.md
    │
    └──→ Analysis outputs ready for Design


DESIGN PHASE
═════════════════════════════════════════════════════════════════

requirements-matrix.csv (from Analysis)
stakeholder-analysis.md (from Analysis)
interview-results.md (from Discovery)
    ↓ [/solution-design with Phase 0: 4 parallel tracks]
    ├─ Market research (TAM/SAM, trends, positioning)
    ├─ Competitive analysis (feature matrix, gaps)
    ├─ Technical feasibility (tech stack, scalability)
    └─ User needs validation (adoption risks, feedback)
    ↓ [Synthesize findings]
Architecture + Design Decisions
    ↓
design-document-v1.md
    ↓ [/document-review]
design-document-v2.md ✓


RISK & EXECUTION PHASE
═════════════════════════════════════════════════════════════════

design-document-v2.md (from Design)
requirements-matrix.csv (from Analysis)
stakeholder-analysis.md (from Analysis)
    ↓ [/risk-assessment]
    ├─ Risk identification (20+ risks)
    ├─ Probability × Impact analysis
    ├─ Top 5 mitigation plans
    ├─ Contingency planning
    └─ Monitoring strategy
    ↓
risk-register.md
    ↓ [Communication Planning]
communication-plan.md
    ↓
READY TO EXECUTE ✅
```

---

## 🔗 Skill Relationships

### **product-discovery ↔ interview-guide**
- **Link**: Discovery outputs → Interview topics
- **product-discovery** identifies what to research
- **interview-guide** structures how to validate discoveries
- **Integration**: Use interview guide to collect evidence for assumptions found in discovery

### **requirement-analysis ↔ solution-design**
- **Link**: Requirements → Architecture constraints
- **requirement-analysis** defines WHAT to build
- **solution-design** defines HOW to build it
- **Integration**: Design constraints are informed by requirement priorities and effort estimates

### **stakeholder-mapping ↔ All Skills**
- **Link**: Stakeholder feedback loops
- **stakeholder-mapping** identifies who to communicate with
- **All skills** produce outputs that need stakeholder sign-off
- **Integration**: Each phase output goes through stakeholder review before proceeding

### **document-review ↔ All Skills**
- **Link**: Quality gate after each major skill output
- **All skills** produce documents
- **document-review** validates completeness before next phase
- **Integration**: Run after product-brief-v1, design-document-v1, etc.

### **risk-assessment ↔ design-document + requirements**
- **Link**: Design risks + requirement complexity → mitigation strategy
- **Depends on**: Final design + prioritized requirements
- **Produces**: Mitigation plans, contingency budget, monitoring plan
- **Integration**: Last major skill before development can begin

---

## 📋 Skill Interaction Checklist

### Before Each Skill Execution:

**✓ Do you have the required inputs?**
- [ ] All input documents available and in final version?
- [ ] Stakeholder feedback incorporated?
- [ ] Previous phase outputs passed document review?

**✓ Are outputs aligned with previous phase?**
- [ ] New outputs reference prior work?
- [ ] No conflicting decisions?
- [ ] Dependencies documented?

**✓ Is team ready for next phase?**
- [ ] Outputs shared with stakeholders?
- [ ] Sign-off received?
- [ ] Team understands direction?

**✓ After skill execution:**
- [ ] Document created and version controlled (v1, v2, v3)?
- [ ] Team review scheduled?
- [ ] Schedule next phase kickoff?

---

## 🎯 Success Criteria per Skill

| Skill | Success Looks Like |
|-------|-------------------|
| **product-discovery** | Clear problem statement, validated market opportunity, 4 distinct research tracks |
| **interview-guide** | 5-8 interviews completed, 60% pattern found (same issue mentioned by 60% of users) |
| **requirement-analysis** | 50+ requirements, clear Must/Should/Could/Won't breakdown, effort estimated |
| **stakeholder-mapping** | 20+ stakeholders identified, power/interest matrix complete, communication plan in place |
| **solution-design** | Architecture clear, tech stack justified, Phase 0 research synthesized into decisions |
| **document-review** | No major issues flagged, completeness verified, ready for next phase |
| **risk-assessment** | 20+ risks identified, top 5 have concrete mitigation plans, contingency budget realistic |

---

## ⚡ Quick Execution Pattern

For any project following this workflow:

```
Week 1-2:  Run /product-discovery → Fix gaps with /interview-guide + /document-review
Week 3-4:  Run /requirement-analysis + /stakeholder-mapping in parallel
Week 5-6:  Run /solution-design [with Phase 0] → Validate with /document-review
Week 6-7:  Run /risk-assessment → Plan communications
```

**Total**: 50-60 BA hours over 7 weeks = **~2 weeks FTE equivalent**

---

## 🚀 Next Phase Readiness

**Ready to proceed when:**
- ✅ All deliverables from current phase completed
- ✅ Document review passed (no major issues)
- ✅ Stakeholder sign-off received
- ✅ Team understands outputs and implications
- ✅ Next phase inputs prepared and validated
