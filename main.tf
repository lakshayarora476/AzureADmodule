resource "random_string" "Terraformuser" {
  length  = 6
  special = false
  upper   = false
  number  = false
}

resource "azuread_user" "terraform_user" {
  user_principal_name = join("-", [var.userprinciplename, random_string.Terraformuser.result])
  display_name        = var.displayname
  password            = var.password

}
resource "azuread_group" "terraform_group" {
  name = var.group_name
}








