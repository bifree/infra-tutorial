# ------------------------------
# Terraform configuration
# ------------------------------
terraform {
    backend "remote" {
    organization = "a_masaki"

    workspaces {
      name = "learn-terraform-github-actions"
    }
  }

  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.9.0"
    }
  }
}

# ------------------------------
# Provider
# ------------------------------
provider "aws" {
  region  = "ap-northeast-1"
}

# ------------------------------
# Variables
# ------------------------------
variable "project" {
  type = string
}

variable "environment" {
  type = string
}
