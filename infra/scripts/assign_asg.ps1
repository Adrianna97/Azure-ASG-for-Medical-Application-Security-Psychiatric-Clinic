<#
.SYNOPSIS
Assigns ASG to VM network interfaces.

.DESCRIPTION
Maps:
- vm-kspps → asg-kspps
- vm-rejestracja → asg-rejestracja
- vm-gabinet → asg-gabinet
#>

param(
    [string]$resourceGroup = "rg-poradnia"
)

Connect-AzAccount

$mapping = @{
    "vm-kspps"       = "asg-kspps"
    "vm-rejestracja" = "asg-rejestracja"
    "vm-gabinet"     = "asg-gabinet"
}

foreach ($vmName in $mapping.Keys) {

    $nic = Get-AzNetworkInterface -ResourceGroupName $resourceGroup | Where-Object { $_.VirtualMachine.Id -match $vmName }
    $asg = Get-AzApplicationSecurityGroup -ResourceGroupName $resourceGroup -Name $mapping[$vmName]

    $nic.IpConfigurations[0].ApplicationSecurityGroups = $asg
    Set-AzNetworkInterface -NetworkInterface $nic
}
