resource "aws_organizations_organizational_unit" "this" {
  for_each = var.organizational_units

  name      = each.key
  parent_id = each.value.parent_id
  tags      = each.value.tags
}

resource "aws_organizations_account" "this" {
  depends_on = [aws_organizations_organizational_unit.this]
  for_each   = var.accounts

  name                       = each.key
  email                      = each.value.email
  close_on_deletion          = each.value.close_on_deletion
  create_govcloud            = each.value.create_govcloud
  iam_user_access_to_billing = each.value.iam_user_access_to_billing
  parent_id                  = each.value.parent_ou_name != null ? aws_organizations_organizational_unit.this[each.value.parent_ou_name].id : null
  role_name                  = each.value.role_name
  tags                       = each.value.tags
}