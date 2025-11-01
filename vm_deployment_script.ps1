
# Login to Azure
Connect-AzAccount

# Set your subscription (optional)
# Select-AzSubscription -SubscriptionId "your-subscription-id"

# Variables
$resourceGroupName = "MyResourceGroup"
$location = "EastUS"
$templateFile = "azure_vm_arm_template.json"
$adminUsername = "azureuser"
$adminPassword = "P@ssw0rd1234"

# Create Resource Group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Deploy ARM Template
New-AzResourceGroupDeployment   -ResourceGroupName $resourceGroupName   -TemplateFile $templateFile   -adminUsername $adminUsername   -adminPassword $adminPassword
