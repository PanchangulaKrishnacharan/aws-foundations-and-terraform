aws_region       = "us-east-1"
environment      = "dev"
vpc_cidr         = "10.0.0.0/16"
instance_type    = "t2.micro"
root_volume_size = 8

trusted_ips = [
  "10.0.0.0/8",      # Internal network
  "192.168.1.0/24"   # VPN network
]

common_tags = {
  Project     = "demo"
  Environment = "dev"
  Terraform   = "true"
  Owner       = "DevOps Team"
  Department  = "Engineering"
  CostCenter  = "CC123"
}
