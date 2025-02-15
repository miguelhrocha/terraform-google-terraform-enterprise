# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "ca_certificate_secret_id" {
  description = <<-EOD
  The Secret Manager secret which comprises the Base64 encoded PEM certificate file for a Certificate Authority. The
  Terraform provider calls this value the secret_id and the GCP UI calls it the name.
  EOD
  type        = string
}

variable "enable_airgap" {
  type        = bool
  description = <<-EOD
  If this is an airgapped installation, then the virtual machine will not need to have a role policy that allows it
  to access the secrets manager.
  EOD
}

variable "tfe_license_secret_id" {
  description = <<-EOD
  The Secret Manager secret which comprises the Base64 encoded Replicated license file. The Terraform provider calls
  this value the secret_id and the GCP UI calls it the name.
  EOD
  type        = string
}

variable "namespace" {
  description = "A prefix which will be applied to all resource names."
  type        = string
}

variable "ssl_certificate_secret" {
  description = <<-EOD
  The Secret Manager secret which comprises the Base64 encoded PEM certificate file. The Terraform provider calls this
  value the secret_id and the GCP UI calls it the name.
  EOD
  type        = string
}

variable "ssl_private_key_secret" {
  description = <<-EOD
  The Secret Manager secret which comprises the Base64 encoded PEM private key file. The Terraform provider calls this
  value the secret_id and the GCP UI calls it the name.
  EOD
  type        = string
}

variable "existing_service_account_id" {
  description = <<-EOD
  An ID of an existing service account to use for log management. Setting this value prevents terraform from creating
  a new user and assigning  a logWriter IAM role.
  EOD
  type        = string
  default     = null
}