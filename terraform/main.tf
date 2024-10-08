module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "thanasis.politis+sandbox@hey.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "thanasis.politis@hey.com"
    SSOUserFirstName          = "Thanasis"
    SSOUserLastName           = "Politis"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
