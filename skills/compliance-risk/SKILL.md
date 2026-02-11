---
name: compliance-risk
description: "Master compliance and risk domain - understand regulatory requirements, data privacy, security risks, legal constraints, and business continuity. Use for identifying compliance needs, assessing risks, and building risk mitigation plans."
allowed-tools: Write
context: fork
agent: Explore
argument-hint: [industry-type] [compliance-question]
user-invocable: true
---

# Compliance & Risk for BA

Missing compliance costs way more than building it right.

## What is Compliance & Risk Domain Knowledge?

**Definition**: Understanding regulatory, legal, and business risks - requirements that must be met, constraints that limit options, and potential failures that must be mitigated.

**Why it matters**:
- Missed compliance: Fines ($1M+), legal liability, shut-down risk
- Security failures: Customer data breach, reputation damage, legal liability
- Business continuity: System down = revenue/operations stop
- Risk blindness: Unknown risks hit you (data loss, fraud, security)
- Late-stage discovery: Building compliance after launch is 10x harder/expensive

**When to Use**:
- ✅ Understanding regulatory requirements
- ✅ Assessing compliance impact on design
- ✅ Identifying security risks
- ✅ Planning risk mitigation
- ✅ Building business continuity plans

---

## 5 Core Risk & Compliance Concepts

### **1. Regulatory Requirements by Industry**

Different industries have dramatically different requirements.

```
HEALTHCARE (HIPAA):
Requirements:
- Patient data must be encrypted in transit and at rest
- Access logging (who accessed what, when)
- Audit trails for compliance
- Business associate agreements with vendors
- Annual compliance training for all staff
Impact on design:
- Complex encryption architecture
- Detailed audit logging (impacts performance)
- Vendor vetting required
Cost: 20-30% of project

FINANCE (PCI-DSS):
Requirements:
- Credit card data must be encrypted
- Quarterly security assessments
- Intrusion detection systems
- Network segmentation
- Restricted employee access
Impact on design:
- Cannot store card data (use payment processors)
- Security infrastructure complex
Cost: 15-25% of project

E-COMMERCE (GDPR/CCPA):
Requirements:
- User consent for data collection
- Right to access/delete data
- Data breach notification (72 hours)
- Privacy policy
Impact on design:
- Consent management system
- Data export functionality
- Data deletion functionality
Cost: 10-20% of project
```

**Important**: Compliance requirements vary by jurisdiction, industry, data type.
Don't assume "everyone needs same rules."

---

### **2. Data Privacy & Security**

Every company collecting data needs this.

```
CONFIDENTIALITY (Keep data secret):
├─ Encryption in transit (HTTPS, TLS)
├─ Encryption at rest (database encryption)
├─ Access controls (who can see what)
└─ Security audits

INTEGRITY (Keep data accurate):
├─ Checksums/hashing
├─ Write-once storage for critical data
├─ Version control
└─ Audit trails (who changed what)

AVAILABILITY (Keep data accessible):
├─ Backups (if lost, can recover)
├─ Redundancy (if one server fails, others work)
├─ Disaster recovery plan
└─ Regular testing of recovery

PRIVACY (User controls over their data):
├─ Consent (ask before collecting)
├─ Transparency (explain what you do)
├─ Access (let users see their data)
└─ Deletion (let users delete their data)
```

---

### **3. Risk Categories: What Can Go Wrong?**

```
TECHNICAL RISKS:
├─ System outage (performance, scalability failure)
├─ Data loss (corruption, deletion, backup failure)
├─ Security breach (hacked, stolen data)
├─ Integration failure (external system down)
└─ Performance degradation (slow response times)

OPERATIONAL RISKS:
├─ Key person dependency (one engineer knows critical system)
├─ Process failures (missing deployment steps)
├─ Vendor dependency (vendor shuts down, changes pricing)
├─ Resource constraints (not enough engineers)
└─ Knowledge loss (people leave, knowledge walks out)

BUSINESS RISKS:
├─ Market risk (customer demand disappears)
├─ Competitive risk (better product from competitor)
├─ Financial risk (budget overruns, revenue shortfall)
├─ Reputational risk (bad PR, loss of trust)
└─ Regulatory risk (new law, violation fine)

LEGAL RISKS:
├─ Liability (sued for damages)
├─ Intellectual property (patent, copyright issues)
├─ Contract violation (breach terms with customer)
└─ Employee/labor (employment law violation)
```

---

### **4. Risk Assessment: Probability × Impact**

Not all risks matter equally.

```
Risk Matrix:

                HIGH IMPACT
                     |
        ┌──────────────┼──────────────┐
        │              │              │
  HIGH  │   Monitor    │   Mitigate   │
  PROB  │   Closely    │   Actively   │
        │              │              │
        ├──────────────┼──────────────┤
        │              │              │
  MEDIUM│   Plan For   │   Monitor    │
  PROB  │   Possibility│   (May Need  │
        │              │   Action)    │
        ├──────────────┼──────────────┤
        │              │              │
  LOW   │   Accept     │   Plan For   │
  PROB  │   (Unlikely) │   (If Occurs)│
        │              │              │
        └──────────────┼──────────────┘
                LOW IMPACT

Mitigate = High probability × High impact
         = Design to prevent, or reduce impact

Monitor = Medium/Low probability × High impact
        = Plan response if it happens

Accept = Low probability × Low impact
       = Not worth spending resources on
```

---

### **5. Mitigation Strategies: What Do We Do?**

Four ways to deal with risk:

```
AVOID: Don't do the risky thing
├─ Example: Security risk from user-uploaded files
├─ Mitigation: Don't allow file uploads
├─ Pro: Eliminates risk
├─ Con: May eliminate feature customers want

REDUCE: Do it but make it safer
├─ Example: Data loss risk from single database
├─ Mitigation: Database replication + backups
├─ Pro: Can still offer feature
├─ Con: Higher cost, more complexity

ACCEPT: Do it knowing risk, have plan if it happens
├─ Example: Key person dependency on one engineer
├─ Mitigation: Cross-training, documentation
├─ Pro: Allows proceeding with some risk
├─ Con: Requires response plan if risk occurs

TRANSFER: Pay someone else to take the risk
├─ Example: Security/compliance risk
├─ Mitigation: Buy cyber insurance, use vendor who handles it
├─ Pro: Risk transferred to specialized party
├─ Con: Ongoing cost
```

---

## Common Risk Mitigations

### **Technical Risks**

```
RISK: Data loss
Mitigation:
- Automated daily backups
- Backup to different region
- Monthly recovery test
- Encryption for backups

RISK: System outage
Mitigation:
- Load balancing (traffic to multiple servers)
- Auto-scaling (add capacity when needed)
- Health monitoring (detect problems fast)
- Incident response plan (know what to do if down)

RISK: Security breach
Mitigation:
- Penetration testing (find vulnerabilities before attackers)
- Security team
- Intrusion detection system
- Data encryption
- Bug bounty program (pay people to find issues)
```

---

### **Operational Risks**

```
RISK: Key person dependency
Mitigation:
- Cross-training team members
- Documentation of critical systems
- Knowledge sharing sessions
- Succession planning

RISK: Vendor lock-in
Mitigation:
- Use industry standards
- Don't depend on vendor-specific features
- Regular data export capability
- Backup vendor options identified
```

---

### **Business Risks**

```
RISK: Market shift/demand disappears
Mitigation:
- Stay close to customers
- Regular market research
- Multiple product lines (don't depend on one feature)
- Pivot capability built in (can shift to new opportunity)

RISK: Competitive threat
Mitigation:
- Continuous innovation
- Strong customer relationships
- Sustainable differentiation
- Market monitoring
```

---

## Compliance by Role

**BA responsibility**:
- [ ] Identify what compliance applies to your project
- [ ] Work with legal/security on requirements
- [ ] Incorporate into requirements & design
- [ ] Plan testing for compliance
- [ ] Document compliance approach

**NOT BA responsibility** (but coordinate with):
- [ ] Detailed security architecture (Security team)
- [ ] Legal contracts (Legal team)
- [ ] Audit/certification (Compliance officer)
- [ ] Data governance (Information security)

---

## Tools & Templates

- 📋 **Risk Register Template**: `assets/risk-register-template.md`
- 📋 **Risk Assessment Matrix**: `assets/risk-matrix-template.md`
- 📋 **Mitigation Plan Template**: `assets/mitigation-plan-template.md`
- 📋 **Compliance Checklist**: `assets/compliance-checklist-template.md`
- 📋 **Security Requirements Worksheet**: `assets/security-requirements-template.md`

---

## Usage Examples

```
/compliance-risk "healthcare" "What HIPAA requirements affect our product?"
/compliance-risk "data-privacy" "How do we design for GDPR compliance?"
/compliance-risk "security-risk" "What are the top security risks we should mitigate?"
```

---

## BA Standards & References

Based on:
- **Risk Management**: ISO 31000 standard
- **Information Security**: ISO 27001
- **Data Privacy**: GDPR, CCPA, privacy frameworks
- **Compliance**: Industry-specific requirements (HIPAA, PCI-DSS, SOC 2)
- **Business Continuity**: Disaster recovery, operational resilience

**Detailed Frameworks**:
- 📚 `references/risk-assessment.md` - Identifying and assessing risks
- 📚 `references/mitigation-strategies.md` - Four approaches to risk: avoid, reduce, accept, transfer
- 📚 `references/compliance-requirements.md` - Industry-specific requirements
- 📚 `references/security-architecture.md` - Technical security controls
- 📚 `references/business-continuity.md` - Disaster recovery and continuity planning
