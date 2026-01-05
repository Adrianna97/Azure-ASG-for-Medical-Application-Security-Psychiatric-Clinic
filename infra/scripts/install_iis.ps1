<#
.SYNOPSIS
Installs IIS on all medical application VMs.

.DESCRIPTION
Enables IIS and management tools on each VM.
#>

param(
    [string]$resourceGroup = "rg-poradnia"
)

Connect-AzAccount

$vms = Get-AzVM -ResourceGroupName $resourceGroup

foreach ($vm in $vms) {
    Invoke-AzVMRunCommand `
        -ResourceGroupName $resourceGroup `
        -Name $vm.Name `
        -CommandId "RunPowerShellScript" `
        -ScriptString "Install-WindowsFeature -name Web-Server -IncludeManagementTools"
}
