data "azurerm_subscription" "current" {}

resource "azurerm_subscription_policy_assignment" "allowed_regions" {
  name                 = "allowed-regions"
  display_name         = "Allowed Regions"
  description          = "Restricts Azure resources to approved regions for the landing zone."
  subscription_id      = data.azurerm_subscription.current.id
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c"

  parameters = jsonencode({
    listOfAllowedLocations = {
      value = [
        "spaincentral"
      ]
    }
  })
}
resource "azurerm_subscription_policy_assignment" "required_tags" {
  name                 = "required-tags"
  display_name         = "Required Tags"
  description          = "Requires standard governance tags on Azure resources."
  subscription_id      = data.azurerm_subscription.current.id
  policy_definition_id = azurerm_policy_set_definition.required_tags.id
}
