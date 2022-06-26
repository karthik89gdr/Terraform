output "azs" {
  description = "vpc azs"
  value       = module.vpc.azs
}
output "vpc_id" {
  description = "vpc-id"
  value       = module.vpc.vpc_id
}
output "vpc_cidr_block" {
  description = "vpc_cidr_block"
  value       = module.vpc.vpc_cidr_block
}

output "public_subnets" {
  description = "vpc public_subnets"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "vpc private_subnets"
  value       = module.vpc.private_subnets
}

output "nat_public_ips" {
  description = "nat_public_ips"
  value       = module.vpc.nat_public_ips
}




