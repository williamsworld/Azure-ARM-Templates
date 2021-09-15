resource appServiceApp 'Microsoft.Web/sites@2020-06-01' = {
  name: 'myappservice'
  location: 'eastus'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}
resource appServiceApp 'Microsoft.Web/sites@2020-06-01' = {
  name: 'toy-product-launch-1'
  location: 'eastus'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}
