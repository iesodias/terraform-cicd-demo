variable "name" {
  type    = string
  default = "rg-terraform-github-actions-state"
}

variable "region" {
  type        = string
  description = "Azure Region where all these resources will be provisioned"
  default     = "Central US"
}

variable "storagename" {
  type    = string
  default = "terraformgithubactionsid"
}

variable "containername" {
  type    = string
  default = "tfstate"
}