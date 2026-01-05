# Azure Virtual Network and Subnet Configuration

## Virtual Network
- **Name:** vnet-poradnia  
- **Address space:** 10.0.0.0/16  
- **Region:** West Europe  
- **Resource Group:** rg-poradnia  

## Subnet
- **Name:** subnet-app  
- **Address range:** 10.0.1.0/24  
- **Purpose:** Hosts all medical application VMs  
- **NSG:** nsg-app (attached later)

This network layout ensures isolation, predictable routing, and centralized enforcement of security policies.


