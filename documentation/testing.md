# Testing and Validation

## Connectivity Tests
- HTTPS access to each application
- SFTP access for e‑Rejestracja
- RDP access (temporary)

## Security Tests
- Attempted cross-application access (blocked)
- Verification of ASG-based filtering
- NSG rule priority validation

## Results
All applications were reachable only through allowed ports and only from correct ASG sources.
