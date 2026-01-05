<#
.SYNOPSIS
Adds ASG-based NSG rules for medical applications.

.DESCRIPTION
Creates:
- Allow-HTTPS-KSPPS
- Allow-HTTPS-SFTP-Rejestracja
- Allow-HTTPS-Gabinet
#>

param(
    [string]$resourceGroup = "rg-poradnia",
    [string]$nsgName = "nsg-app"
)

Connect-AzAccount

$nsg = Get-AzNetworkSecurityGroup -ResourceGroupName $resourceGroup -Name $nsgName

# KS-PPS
$nsg | Add-AzNetworkSecurityRuleConfig `
    -Name "Allow-HTTPS-KSPPS" `
    -Priority 100 `
    -Direction Inbound `
    -Access Allow `
    -Protocol Tcp `
    -SourceApplicationSecurityGroup (Get-AzApplicationSecurityGroup -Name "asg-kspps" -ResourceGroupName $resourceGroup) `
    -DestinationPortRange 443 `
    -SourceAddressPrefix "*" `
    -DestinationAddressPrefix "*"

# e-Rejestracja
$nsg | Add-AzNetworkSecurityRuleConfig `
    -Name "Allow-HTTPS-SFTP-Rejestracja" `
    -Priority 110 `
    -Direction Inbound `
    -Access Allow `
    -Protocol Tcp `
    -SourceApplicationSecurityGroup (Get-AzApplicationSecurityGroup -Name "asg-rejestracja" -ResourceGroupName $resourceGroup) `
    -DestinationPortRange @("443","22") `
    -SourceAddressPrefix "*" `
    -DestinationAddressPrefix "*"

# Gabinet.gov.pl
$nsg | Add-AzNetworkSecurityRuleConfig `
    -Name "Allow-HTTPS-Gabinet" `
    -Priority 120 `
    -Direction Inbound `
    -Access Allow `
    -Protocol Tcp `
    -SourceApplicationSecurityGroup (Get-AzApplicationSecurityGroup -Name "asg-gabinet" -ResourceGroupName $resourceGroup) `
    -DestinationPortRange 443 `
    -SourceAddressPrefix "*" `
    -DestinationAddressPrefix "*"

Set-AzNetworkSecurityGroup -NetworkSecurityGroup $nsg

