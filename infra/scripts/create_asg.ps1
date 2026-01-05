<#
.SYNOPSIS
Creates Application Security Groups for medical applications.

.DESCRIPTION
Creates asg-kspps, asg-rejestracja, asg-gabinet.
#>

param(
    [string]$resourceGroup = "rg-poradnia",
    [string]$location = "westeurope"
)

Connect-AzAccount

$asgNames = @("asg-kspps", "asg-rejestracja", "asg-gabinet")

foreach ($asg in $asgNames) {
    New-AzApplicationSecurityGroup `
        -Name $asg `
        -ResourceGroupName $resourceGroup `
        -Location $location
}
