Azure Active Directory Terraform module
=====================================

[![Opstree Solutions][opstree_avatar]][opstree_homepage]

[Opstree Solutions][opstree_homepage] 

  [opstree_homepage]: https://opstree.github.io/
  [opstree_avatar]: https://img.cloudposse.com/150x150/https://github.com/opstree.png

Terraform module which creates, manage users and groups on Azure.

These types of resources are supported:

* [azuread_user](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/user)

Terraform versions
------------------

Terraform 0.13.

Usage
------

```hcl
module "aad-user" {
  source            = "./modules/aad-user"
  userprinciplename = "terraform@training.com"
  displayname       = "TerraformUser"
  password          = "*****"
  group_name        = "TerraformGroup"
}


```


Tags
----
* Tags are assigned to resources with name variable as prefix.
* Additial tags can be assigned by tags variables as defined above.

Inputs
------
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| userprinciplename | User Principle name of the user | `string` | `"terraform@training.com"` | yes |
| displayname | Displayed name for the user | `string` | `"TerraformUser"` | yes |
| password | Password given to the user | `string` | `"*****"` | yes |
| group_name | Name of the group user is part of | `string` | `"TerraformGroup"` | yes |

Output
------
| Name | Description |
|------|-------------|
|user_principal_name |This variable will give User Principle name of the user |
|password |This variable will give password assigned to the user |

