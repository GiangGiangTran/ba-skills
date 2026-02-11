---
name: document-review
description: Review BA documents (requirements, analysis, design docs) cho clarity, completeness, và alignment với best practices. Dùng khi reviewing documents, checking quality, hay validating BA outputs.
allowed-tools: Read, Grep, Edit
argument-hint: [filename] [focus-area]
user-invocable: true
---

# BA Document Review

Review document: `$0`
Focus area: `$1` (optional - examples: clarity, completeness, traceability, risk)

## Review Checklist

- **Clarity**: Mỗi requirement có rõ ràng, cụ thể, và measurable không?
- **Completeness**: Có missing information hay ambiguities không?
- **Traceability**: Có clear link giữa requirements, design, test cases không?
- **Stakeholder Alignment**: Có mismatch với stakeholder expectations không?
- **Format & Structure**: Có consistent formatting, naming conventions, structure không?
- **Risk & Constraints**: Có potential risks, dependencies, constraints chưa documented không?
- **Acceptance Criteria**: Mỗi requirement có specific, measurable acceptance criteria không?
- **Assumptions**: Các assumptions có documented và validated không?

## Quality Indicators

**Tốt ✓**:
- Specific, measurable acceptance criteria cho mỗi requirement
- Clear roles, responsibilities, và ownership
- Documented assumptions và constraints
- Traceability matrix hoặc linkage
- Well-structured, consistent formatting
- Clear success metrics và KPIs
- Risk assessment included
- Stakeholder sign-off documented

**Cần cải thiện ✗**:
- Vague requirements ("user-friendly", "fast", "scalable")
- Missing acceptance criteria
- Unclear ownership hay responsibilities
- Assumption không documented
- Inconsistent formatting
- Missing traceability
- No risk identification
- Unclear scope boundaries

## Review Output Format

Provide:

### 1. Executive Summary (2-3 sentences)
Tổng quát mức độ quality, main findings, overall recommendation

### 2. Detailed Review by Section
- Section name
- Findings (good points + issues)
- Specific recommendations
- Priority (Critical/High/Medium/Low)

### 3. Key Issues Summary
Top 3-5 issues cần fix trước

### 4. Improvement Recommendations
Specific, actionable recommendations

### 5. Quality Score
Scoring: 1-10 (1=Poor, 10=Excellent)
- Clarity: _/10
- Completeness: _/10
- Structure: _/10
- Traceability: _/10
- Overall: _/10

## Usage Examples

```
/document-review requirements.md clarity
/document-review design-doc.md completeness
/document-review analysis.md
```

## Professional Standards

Document should follow:
- BABOK (Business Analysis Body of Knowledge) guidelines
- IEEE 830 (Requirements specification standard)
- ISO/IEC/IEEE 29148 (System and software engineering requirements)
- Industry best practices
