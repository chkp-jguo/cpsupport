# Terraform
terraform {
  required_version = ">= 0.13"
}

# Check Point
provider "checkpoint" {
  server   = var.checkpoint.server
  username = var.checkpoint.username
  password = var.checkpoint.password
  context  = var.checkpoint.context
  timeout  = var.checkpoint.timeout
}

module "checkpoint" {
   source = "modules/checkpoint"
   services = var.services
}