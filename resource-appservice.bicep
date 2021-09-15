resource appServicePlan 'Microsoft.Web/serverFarms@2020-06-01' = {
  name: 'my-appservice-plan'
  location: 'eastus'
  sku: {
    name: 'F1'
    tier: 'Free'
  }
}
resource appServiceApp 'Microsoft.Web/sites@2020-06-01' = {
  name: 'my-appservice-app'
  location: 'eastus'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}
