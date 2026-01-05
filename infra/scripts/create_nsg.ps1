<#
.SYNOPSIS
Creates a Network Security Group for application subnet.

.DESCRIPTION
Creates nsg-app in rg-poradnia.
#>

param(
    [string]$resourceGroup = "rg-poradnia",
    [string]$location = "westeurope",
    [string]$nsgName = "nsg-app"
)

Connect-AzAccount

New-AzNetworkSecurityGroup `
    -Name $nsgName `
    -ResourceGroupName $resourceGroup `
    -Location $location
