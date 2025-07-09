module "security_account_st3633969" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail             = "st3633969@gmail.com"
    AccountName              = "security-account-st3633969"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail             = "st3633969@gmail.com"
    SSOUserFirstName         = "ST"
    SSOUserLastName          = "3633969"
  }

  account_tags = {
    "ABC:Owner"       = "st3633969@gmail.com"
    "ABC:Division"    = "Security"
    "ABC:Environment" = "Prod"
    "ABC:CostCenter"  = "SEC123"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "SEC"
    "ABC:BUCode"      = "SEC001"
    "ABC:Project"     = "SecurityOnboarding"
  }

  change_management_parameters = {
    change_requested_by = "ST 3633969"
    change_reason       = "Provisioning security OU account for production use"
  }

  custom_fields = {
    custom1 = "security"
    custom2 = "production"
  }

  account_customizations_name = "security-customizations"
}
