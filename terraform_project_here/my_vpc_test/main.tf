module "vpc" {
  source = "../my_vpc_creation"
#   vpc_cidr = "10.0.0.0/16"
#   project_name = "roboshop"
#   enviroment = "dev"

vpc_cidr = var.vpc_cidr
project_name = var.project_name
enviroment = var.enviroment
vpc_tags = var.vpc_tags
# public subnets
public_subnet_cidrs = var.public_subnet_cidrs
# private subnets
private_subnet_cidrs = var.private_subnet_cidrs
#database subnets
database_subnet_cidrs = var.database_subnet_cidrs

is_peering_required = true
}

# # Declare the data source
# data "aws_availability_zones" "available" {
#   state = "available"
# }