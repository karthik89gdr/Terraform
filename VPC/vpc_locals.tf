locals {
  owner       = var.business-unit
  environment = var.environment
  name        = "${var.business-unit}-${var.environment}"
  common_tags = {
    Owner       = local.owner
    environment = local.environment
  }
}