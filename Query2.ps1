$ResourceGroup = '<Resource_Group>'
$VmName = '<VM_Name>'
$NicNames = az vm nic list --resource-group $ResourceGroup --vm-name $VmName | ConvertFrom-Json | Foreach-Object { $_.id.Split('/')[-1] }
foreach($NicName in $NicNames)
{
    $Nic = az vm nic show --resource-group $ResourceGroup --vm-name $VmName --nic $NicName | ConvertFrom-Json
    Write-Host $NicName, $Nic.primary, $Nic.macAddress 
    output = $nic |ConvertTo-Json 
}

Get-EC2InstanceMetadata -Category AmiId | ConvertTo-Json