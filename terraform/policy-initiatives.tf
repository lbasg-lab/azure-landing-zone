resource "azurerm_policy_set_definition" "required_tags" {
  name         = "required-tags"
  display_name = "Required Tags"
  description  = "Requires standard governance tags on Azure resources."
  policy_type  = "Custom"

  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/871b6d14-10aa-478d-b590-94f262ecfa99"

    parameter_values = jsonencode({
      tagName = {
        value = "environment"
      }
    })
  }

  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/871b6d14-10aa-478d-b590-94f262ecfa99"

    parameter_values = jsonencode({
      tagName = {
        value = "project"
      }
    })
  }

  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/871b6d14-10aa-478d-b590-94f262ecfa99"

    parameter_values = jsonencode({
      tagName = {
        value = "managed-by"
      }
    })
  }
}