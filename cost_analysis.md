# Cost Analysis

## Cost Components
- Virtual Machines (3× Standard_B2s)
- Virtual Network (free)
- NSG (free)
- ASG (free)
- Storage for logs (Log Analytics)

## Summary
The architecture is cost‑efficient:
- ASG and NSG do not generate additional charges
- Main cost driver: VM compute
- Optional: Log Analytics workspace for monitoring

Estimated monthly cost: **Low**
