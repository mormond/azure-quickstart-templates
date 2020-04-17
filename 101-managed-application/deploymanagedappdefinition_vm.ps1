# See https://docs.microsoft.com/en-us/azure/azure-resource-manager/managed-applications/publish-managed-app-definition-quickstart

New-AzManagedApplicationDefinition `
    -Name "ManagedVM" `
    -Location "southcentralus" `
    -ResourceGroupName "appDefinitionGroup" `
    -LockLevel ReadOnly `
    -DisplayName "Managed VM Account" `
    -Description "Managed VM Solution Account" `
    -Authorization "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx:b24988ac-6180-42a0-ab88-20f7382dd24c" `
    -PackageFileUri "https://github.com/Azure/azure-managedapp-samples/raw/master/Managed%20Application%20Sample%20Packages/101-managed-vm/managedvm.zip"
