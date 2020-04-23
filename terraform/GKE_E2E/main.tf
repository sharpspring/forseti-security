
#-----------------------#
# Deploy Forseti on-GKE #
#-----------------------#
module "forseti-on-gke" {
    //source                  = "terraform-google-modules/forseti/google//examples/on_gke_end_to_end"
  source                  = "../../terraform-google-forseti/examples/on_gke_end_to_end"
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
  git_sync_private_ssh_key_file    = var.git_sync_private_ssh_key_file
  helm_repository_url              = var.helm_repository_url
  policy_library_repository_url    = var.policy_library_repository_url
  policy_library_repository_branch = var.policy_library_repository_branch
  policy_library_sync_enabled      = var.policy_library_sync_enabled
  server_log_level                 = var.server_log_level
}
