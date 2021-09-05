# Variaveis
$Location =”East US”
$App1_Name = “AppService01”
$RG_name = "RG-App_Services"
$tier = "Standard"
$Plan_name = "planAppService01"

# Criar um grupo de recursos
New-AzResourceGroup -Name $RGname -Location $Location1

# Criar App Service Plan
New-AzAppservicePlan -Name $Planname -ResourceGroupName $RGname -Location $Location -Tier $tier

# Criar App Servie 
New-AzWebApp -Name $App1Name -ResourceGroupName $RGname -Location $Location -AppServicePlan $Planname

