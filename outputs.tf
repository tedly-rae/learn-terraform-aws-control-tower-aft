# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "ct_management_account_id" {
  value = var.ct_management_account_id
}

output "log_archive_account_id" {
  value = var.log_archive_account_id
}

output "audit_account_id" {
  value = var.audit_account_id
}

output "aft_management_account_id" {
  value = var.aft_management_account_id
}

output "ct_home_region" {
  value = var.ct_home_region
}

output "tf_backend_secondary_region" {
  value = var.tf_backend_secondary_region
}