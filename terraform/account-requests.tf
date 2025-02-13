module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "thanasis.politis+ocre-class-1@pcg.io"
    AccountName               = "Class Ocre 1"
    ManagedOrganizationalUnit = "ProjectA"
    SSOUserEmail              = "thanasis.politis@pcg.io"
    SSOUserFirstName          = "Thanasis"
    SSOUserLastName           = "Politis"
  }

  account_tags = {
    "Project" = "CustomerA"
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
