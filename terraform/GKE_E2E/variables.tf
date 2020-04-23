/**
 * Copyright 2020 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "cscc_violations_enabled" {
  description = "Notify for CSCC violations"
  type        = bool
  default     = true
}

variable "cscc_source_id" {
  description = "Source ID for CSCC Beta API"
  default     = "9028794306432135254"
}

variable "config_validator_enabled" {
  description = "Config Validator scanner enabled."
  type        = bool
  default     = true
}

variable "domain" {
  description = "The domain associated with the GCP Organization ID"
    default = "sharpspring.com"
}

variable "gsuite_admin_email" {
  description = "G-Suite administrator email address to manage your Forseti installation"
  default = "nate@sharpspring.com"
}

variable "sendgrid_api_key" {
  description = "Sendgrid.com API key to enable email notifications"
  default     = "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"
}

variable "forseti_email_recipient" {
  description = "Email address that receives Forseti notifications"
  default     = "securitynotifications@sharpspring.com"
}

variable "violations_slack_webhook" {
  description = "Slack Notification Web Hook"
  default =  "https://hooks.slack.com/services/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"
}

variable "forseti_email_sender" {
  description = "Email address that sends the Forseti notifications"
  default     = "forseti@sharpspring.com"
}

variable "gke_cluster_name" {
  description = "The name of the GKE Cluster"
  default = "forseti"
}

variable "gke_cluster_location" {
  description = "The location of the GKE Cluster"
    default = "us-central1-b"
}

variable "gke_node_pool_name" {
  description = "The name of the GKE node-pool where Forseti is being deployed"
  default     = "default-pool"
}

variable "org_id" {
  description = "GCP Organization ID that Forseti will have purview over"
  default = "114706482605"
}

variable "project_id" {
  description = "The ID of an existing Google project where Forseti will be installed"
  default = "forseti-233018"
}

variable "k8s_tiller_sa_name" {
  description = "The Kubernetes Service Account used by Tiller"
  default     = "tiller"
}

#---------#
# Network #
#---------#
variable "network" {
  description = "The VPC where the Forseti client and server will be created"
  default     = "default"
}

variable "subnetwork" {
  description = "The VPC subnetwork where the Forseti client and server will be created"
  default     = "default"
}

#-------------#
# Helm config #
#-------------#

variable "git_sync_private_ssh_key_file" {
  description = "The file containing the SSH key allowing the git-sync to clone the policy library repository."
 default     = "../FORSETI_RO_POLICY"
}

variable "policy_library_repository_url" {
  description = "The git repository containing the policy-library."
  default     = "git@github.com:sharpspring/forseti-policy-library.git"
}

variable "policy_library_repository_branch" {
  description = "The specific git branch containing the policies."
  default     = "master"
}

variable "policy_library_sync_enabled" {
  description = "Sync config validator policy library from private repository."
  type        = bool
  default     = true
}

variable "helm_repository_url" {
  description = "The Helm repository containing the 'forseti-security' Helm charts"
  default     = "https://forseti-security-charts.storage.googleapis.com/release/"
}

variable "server_log_level" {
  description = "The log level of the Forseti server container."
  default     = "info"
}

variable "region" {
  description = "Region where forseti subnetwork will be deployed"
  default     = "us-central1"
}

variable "kubernetes_version" {
  default = "1.14.10-gke.27"
}
