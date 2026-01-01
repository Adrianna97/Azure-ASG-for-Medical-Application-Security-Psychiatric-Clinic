<#
.SYNOPSIS
Creates a Virtual Network and application subnet for the clinic.

.DESCRIPTION
Creates vnet-poradnia and subnet-app used for hosting
medical application servers (KS-PPS, e-Rejestracja, Gabinet.gov.pl).
#>

param(
    [string]$resourceGroup = "rg-poradnia",
    [string]$location = "westeurope",
    [string]$vnetName = "vnet-poradnia",
    [string]$subnetName = "subnet-app",
    [string]$vnetPrefix = "10.0.0.0/16",
    [string]$subnetPrefix = "10.0.1.0/24"
)

Connect-AzAccount

New-AzResourceGroup -Name $resourceGroup -Location $location -ErrorAction SilentlyContinue

New-AzVirtualNetwork `
    -Name $vnetName `
    -ResourceGroupName $resourceGroup `
    -Location $location `
    -AddressPrefix $vnetPrefix `
    -Subnet @{"Name"=$subnetName; "AddressPrefix"=$subnetPrefix}
