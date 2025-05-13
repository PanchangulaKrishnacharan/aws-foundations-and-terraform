provider "aws" {
  region = var.aws_region
  
  default_tags {
    tags = var.common_tags
  }
}

module "infrastructure" {
  source = "../../modules"

  environment     = var.environment
  vpc_cidr       = var.vpc_cidr
  instance_type  = var.instance_type
  trusted_ips    = var.trusted_ips
  common_tags    = var.common_tags
  root_volume_size = var.root_volume_size
}
