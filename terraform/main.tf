module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "yuta-hamada+kh02@freee.co.jp"
    AccountName               = "kakehashi01"
    ManagedOrganizationalUnit = "demo01"
    SSOUserEmail              = "yuta-hamada+kh02@freee.co.jp"
    SSOUserFirstName          = "yuta"
    SSOUserLastName           = "kakehashi01"
  }

  account_tags = {
    "Stage"   = "dev"
    "project" = "kakehashi02"
  }

  change_management_parameters = {
    change_requested_by = "AFT learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

}
