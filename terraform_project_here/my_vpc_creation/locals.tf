locals {
  common_tags={
    Project = var.project_name
    Enviroment = var.enviroment
    Terraform = true 
  }
  common_name_suffix = "${var.project_name}-${var.enviroment}"   #roboshop-dev
  az_names = slice(data.aws_availability_zones.available.names,0,2)
}