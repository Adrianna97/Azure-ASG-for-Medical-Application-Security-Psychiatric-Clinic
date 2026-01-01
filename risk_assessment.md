# Risk Assessment

| Risk | Impact | Likelihood | Mitigation |
|------|---------|------------|------------|
| Misconfigured IP rules | High | Medium | ASG-based filtering |
| Unauthorized access | High | Low | NSG + HTTPS |
| Lateral movement | High | Medium | Segmentation via ASG |
| Human error | Medium | Medium | Centralized NSG |
| Data exposure | High | Low | Encrypted traffic |

Overall risk after mitigation: **Low**

