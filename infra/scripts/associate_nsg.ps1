<#
.SYNOPSIS
Associates NSG with the application subnet.

.DESCRIPTION
Links nsg-app to subnet-app in vnet-poradnia.
#>

param(
    [string]$resourceGroup = "rg-poradnia",
    [string]$vnetName = "vnet-poradnia",
    [string]$subnetName = "subnet-app",
    [string]$nsgName = "nsg-app"
)

Connect-AzAccount

$vnet = Get-AzVirtualNetwork -ResourceGroupName $resourceGroup -Name $vnetName
$nsg  = Get-AzNetworkSecurityGroup -ResourceGroupName $resourceGroup -Name $nsgName

Set-AzVirtualNetworkSubnetConfig `
    -VirtualNetwork $vnet `
    -Name $subnetName `
    -AddressPrefix $vnet.Subnets[0].AddressPrefix `
    -NetworkSecurityGroup $nsg

$vnet | Set-AzVirtualNetwork


