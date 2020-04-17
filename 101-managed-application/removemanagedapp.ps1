$managedag = "managedACIApplicationGroup"
$deployedAppName = "aciApp"

Remove-AzManagedApplication -name $deployedAppName -ResourceGroupName $managedag