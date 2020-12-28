output "user_principal_name" {
  value = azuread_user.terraform_user.user_principal_name
}

output "password" {
  value = azuread_user.terraform_user.password
}


