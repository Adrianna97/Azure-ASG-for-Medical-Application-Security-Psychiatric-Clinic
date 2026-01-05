# Virtual Machine Deployment

Three Windows Server VMs were deployed to host medical applications:

| VM Name          | Application        | Size           | OS                       |
|------------------|--------------------|----------------|---------------------------|
| vm-kspps         | KS‑PPS             | Standard_B2s   | Windows Server 2019       |
| vm-rejestracja   | e‑Rejestracja      | Standard_B2s   | Windows Server 2019       |
| vm-gabinet       | Gabinet.gov.pl     | Standard_B2s   | Windows Server 2019       |

All VMs were deployed into:
- **vnet-poradnia**
- **subnet-app**

Public inbound ports enabled only for RDP (3389) during installation.
