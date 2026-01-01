<#
.SYNOPSIS
Creates three Windows Server VMs for medical applications.

.DESCRIPTION
Deploys vm-kspps, vm-rejestracja, vm-gabinet into subnet-app.
#>

param(
    [string]$resourceGroup = "rg-poradnia",
    [string]$location = "westeurope",
    [string]$vnetName = "vnet-poradnia",
    [string]$subnetName = "subnet-app"
)

Connect-AzAccount

$vmNames = @("vm-kspps", "vm-rejestracja", "vm-gabinet")

foreach ($vm in $vmNames) {

    New-AzVm `
        -ResourceGroupName $resourceGroup `
        -Name $vm `
        -Location $location `
        -VirtualNetworkName $vnetName `
        -SubnetName $subnetName `
        -Image "Win2019Datacenter" `
        -Size "Standard_B2s" `
        -PublicIpAddressName "$vm-ip" `
        -OpenPorts 3389
}
