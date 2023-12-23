# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

module "aft" {
  source = "github.com/aws-ia/terraform-aws-control_tower_account_factory"

  # Required Vars
  ct_management_account_id    = var.ct_management_account_id
  log_archive_account_id      = var.log_archive_account_id
  audit_account_id            = var.audit_account_id
  aft_management_account_id   = var.aft_management_account_id
  ct_home_region              = var.ct_home_region
  tf_backend_secondary_region = var.tf_backend_secondary_region

  # VCS Vars
  vcs_provider                                  = "github"
  account_request_repo_name                     = "${var.github_username}/learn-terraform-aft-account-request"
  account_provisioning_customizations_repo_name = "${var.github_username}/learn-terraform-aft-account-provisioning-customizations"
  global_customizations_repo_name               = "${var.github_username}/learn-terraform-aft-global-customizations"
  account_customizations_repo_name              = "${var.github_username}/learn-terraform-aft-account-customizations"

  # AFT Feature flags
  aft_feature_cloudtrail_data_events      = false
  aft_feature_enterprise_support          = false
  aft_feature_delete_default_vpcs_enabled = true
}
