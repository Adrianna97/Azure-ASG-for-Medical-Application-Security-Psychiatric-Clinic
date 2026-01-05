# Security Considerations

## Threats Addressed
- Unauthorized access to medical systems
- Misconfigured IP-based rules
- Lateral movement between applications
- Exposure of sensitive patient data

## Mitigations
- ASG-based segmentation
- Centralized NSG enforcement
- HTTPS-only communication
- Minimal open ports
- No public exposure of application ports

## Additional Recommendations
- Enable Azure Monitor logs
- Enable NSG flow logs
- Use Just-In-Time VM Access for RDP
