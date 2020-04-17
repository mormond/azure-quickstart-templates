# See https://docs.microsoft.com/en-us/azure/azure-resource-manager/managed-applications/scripts/managed-application-poweshell-sample-create-application

$iteration = 3
$managedag = "managedACIApplicationGroup_$iteration"
$managedrg = "managedACIResourceGroup_$iteration"
$location = "southcentralus"
$appDefintionrg = "appDefinitionGroup"
$appDefinitionAppName = "ManagedACIApp"
$deployedAppName = "aciApp"

# Create resource group
New-AzResourceGroup -Name $managedag -Location $location

# Get ID of managed application definition
$appid=(Get-AzManagedApplicationDefinition -ResourceGroupName $appDefintionrg -Name $appDefinitionAppName).ManagedApplicationDefinitionId

# Create the managed application
New-AzManagedApplication `
  -Verbose `
  -Name $deployedAppName `
  -Location $location `
  -Kind ServiceCatalog `
  -ResourceGroupName $managedag `
  -ManagedApplicationDefinitionId $appid `
  -ManagedResourceGroupName $managedrg

