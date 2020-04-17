# See https://docs.microsoft.com/en-us/azure/azure-resource-manager/managed-applications/publish-managed-app-definition-quickstart

$appDefinitionAppName = "ManagedACIApp"
$location = "southcentralus"
$appDefintionrg = "appDefinitionGroup"

New-AzResourceGroup -Name $appDefintionrg -Location $location

New-AzManagedApplicationDefinition `
    -Name $appDefinitionAppName `
    -Location $location `
    -ResourceGroupName $appDefintionrg `
    -LockLevel ReadOnly `
    -DisplayName "Managed ACI Account" `
    -Description "Managed ACI Solution Account" `
    -Authorization "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx:b24988ac-6180-42a0-ab88-20f7382dd24c" `
    -PackageFileUri "https://github.com/mormond/azure-managedapp-samples/raw/master/Managed%20Application%20Sample%20Packages/301-managed-aci/managedaci.zip"



