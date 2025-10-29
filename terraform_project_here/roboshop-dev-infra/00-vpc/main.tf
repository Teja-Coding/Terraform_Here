module "vpc" {
    source = "git::https://github.com/Teja-Coding/Terraform_Here.git//terraform_project_here/my_vpc_creation?ref=main"
vpc_cidr = var.vpc_cidr
project_name = var.project_name
enviroment = var.environment
vpc_tags = var.vpc_tags

# public subnets
public_subnet_cidrs = var.public_subnet_cidrs

# private subnets
private_subnet_cidrs = var.private_subnet_cidrs

#database subnets
database_subnet_cidrs = var.database_subnet_cidrs

is_peering_required = true
}
