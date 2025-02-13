module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = ""
    AccountName               = ""
    ManagedOrganizationalUnit = "" 
    SSOUserEmail              = ""
    SSOUserFirstName          = ""
    SSOUserLastName           = ""
  }

  account_tags = {
    "Project"     = "CustomerA"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower"
    change_reason       = "Create new projects for universities"
  }

  custom_fields = {
    custom1 = "a"
  }

  account_customizations_name = "SANDBOX"
}