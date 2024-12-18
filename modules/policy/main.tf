resource "azurerm_policy_definition" "definition" {
  for_each = { for def in var.definitions : def.name => def }

  name         = each.value.name
  policy_type  = "Custom"
  mode         = "All"
  policy_rule  = each.value.policy_rule
}

resource "azurerm_policy_assignment" "assignment" {
  for_each = { for assign in var.assignments : assign.name => assign }

  name                 = each.value.name
  policy_definition_id = azurerm_policy_definition.definition[each.value.policy_name].id
  display_name         = each.value.display_name
  scope                = var.resource_group_name
}
