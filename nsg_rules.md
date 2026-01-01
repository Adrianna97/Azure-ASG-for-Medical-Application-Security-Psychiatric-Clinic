# NSG Rules Based on ASG

The following rules were created:

### KS‑PPS
- Source: asg-kspps  
- Destination ports: 443  
- Priority: 100  
- Rule: Allow-HTTPS-KSPPS  

### e‑Rejestracja
- Source: asg-rejestracja  
- Destination ports: 443, 22  
- Priority: 110  
- Rule: Allow-HTTPS-SFTP-Rejestracja  

### Gabinet.gov.pl
- Source: asg-gabinet  
- Destination ports: 443  
- Priority: 120  
- Rule: Allow-HTTPS-Gabinet  

These rules enforce strict segmentation and ensure only required traffic is allowed.
