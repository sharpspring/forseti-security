    module "forseti" {
    source  = "terraform-google-modules/forseti/google"
  domain     = var.domain
  org_id     = var.org_id
  project_id = var.project_id

  gsuite_admin_email      = var.gsuite_admin_email
  sendgrid_api_key        = var.sendgrid_api_key
  forseti_email_sender    = var.forseti_email_sender
  forseti_email_recipient = var.forseti_email_recipient
  cscc_violations_enabled = var.cscc_violations_enabled
  cscc_source_id          = var.cscc_source_id

  config_validator_enabled         = var.config_validator_enabled

}
