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

variable "config_validator_enabled" {
  description = "Config Validator scanner enabled."
  type        = bool
  default     = true
}

variable "cscc_violations_enabled" {
  description = "Notify for CSCC violations"
  type        = bool
  default     = true
}

variable "cscc_source_id" {
  description = "Source ID for CSCC Beta API"
  default     = "organizations/114706482605/sources/9028794306432135254"
}

variable "default_node_pool_disk_size" {
  description = "Default Node Pool disk size"
  default     = 100
}

variable "default_node_pool_disk_type" {
  description = "Default Node Pool disk type"
  default     = "pd-ssd"
}

variable "default_node_pool_machine_type" {
  description = "Default Node Pool machine type"
  default     = "n1-standard-8"
}

variable "domain" {
  description = "sharpspring.com"
}

variable "git_sync_private_ssh_key_file" {
  description = "The file containing the private SSH key allowing the git-sync to clone the policy library repository."
  default     = "./FORSETI_RO_POLICY"
}

variable "gke_cluster_name" {
  description = "The name of the GKE Cluster"
  default     = "forseti"
}

variable "gke_node_ip_range" {
  description = "The IP range for the GKE nodes."
  default     = "10.1.0.0/20"
}

variable "gke_pod_ip_range" {
  description = "The IP range of the Kubernetes pods"
  default     = "10.2.0.0/20"
}

variable "gke_pod_ip_range_name" {
  description = "The name of the IP range of the Kubernetes pods"
  default     = "gke-pod-ip-range"
}

variable "gke_service_account" {
  description = "The service account to run nodes as if not overridden in node_pools. The default value will cause a cluster-specific service account to be created."
  default     = "create"
}

variable "gke_service_ip_range" {
  description = "The IP range of the Kubernetes services."
  default     = "10.3.0.0/20"
}

variable "gke_service_ip_range_name" {
  description = "The name of the IP range of the Kubernetes services."
  default     = "gke-service-ip-range"
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

variable "forseti_email_sender" {
  description = "Email address that sends the Forseti notifications"
  default     = "forseti-noreply@sharpspring.com"
}

variable "violations_slack_webhook" {
  description = "Slack Notification Web Hook"
  default =  "https://hooks.slack.com/services/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"
}

variable "helm_repository_url" {
  description = "The Helm repository containing the 'forseti-security' Helm charts"
  default     = "https://forseti-security-charts.storage.googleapis.com/release/"
}

variable "k8s_forseti_namespace" {
  description = "The Kubernetes namespace in which to deploy Forseti."
  default     = "forseti"
}

variable "k8s_tiller_sa_name" {
  description = "The Kubernetes Service Account used by Tiller"
  default     = "tiller"
}

variable "k8s_forseti_orchestrator_image_tag" {
  description = "The tag for the container image for the Forseti orchestrator"
  default     = "v2.25.1"
}

variable "k8s_forseti_server_image_tag" {
  description = "The tag for the container image for the Forseti server"
  default     = "v2.25.1"
}

variable "kubernetes_version" {
  type        = string
  description = "The Kubernetes version of the masters. If set to 'latest' it will pull latest available version in the selected region."
  default     = "1.14.10-gke.17"
}

variable "network" {
  description = "The name of the VPC being created"
  default     = "forseti-gke-network"
}

variable "org_id" {
  description = "GCP Organization ID that Forseti will have purview over"
  default = "organizations/114706482605"
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

variable "project_id" {
  description = "The ID of an existing Google project where Forseti will be installed"
  default = "forseti-233018"
}

variable "region" {
  description = "Region where Forseti will be deployed"
  default     = "us-central1"
}

variable "subnetwork" {
  description = "The name of the subnet being created"
  default     = "gke-sub-network"
}

variable "network_description" {
  type        = string
  description = "An optional description of the network. The resource must be recreated to modify this field."
  default     = "forseti-net"
}

variable "auto_create_subnetworks" {
  description = "When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources."
  type        = bool
  default     = false
}

variable "server_log_level" {
  description = "The log level of the Forseti server container."
  default     = "info"
}

#----------------#
# Forseti bucket #
#----------------#
variable "storage_bucket_location" {
  description = "GCS storage bucket location"
  default     = "us-central1"
}

variable "bucket_cai_location" {
  description = "GCS CAI storage bucket location"
  default     = "us-central1"
}