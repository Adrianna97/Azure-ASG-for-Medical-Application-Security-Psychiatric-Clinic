# Application Security Groups (ASG) Creation

Three ASGs were created to logically group application servers:

| ASG Name          | Purpose                     |
|-------------------|-----------------------------|
| asg-kspps         | KS‑PPS application traffic  |
| asg-rejestracja   | e‑Rejestracja traffic       |
| asg-gabinet       | Gabinet.gov.pl traffic      |

ASG allows assigning security rules to application groups instead of individual VMs.
