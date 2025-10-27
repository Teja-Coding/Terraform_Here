variable "vpc_cidr" {
  type = string
  description = "plese provide vpc cidr"
}

variable "project_name" {
 type = string 
}

variable "enviroment" {
  type = string
}

variable "vpc_tags" {
  type = map
  default = {}
}

variable "igw_tags" {
  type = map 
  default = {}
}


variable "public_subnets_tags"{
    type = map 
  default = {}
}

variable "public_subnet_cidrs" {
    type = list
}

variable "private_subnet_cidrs" {
    type = list
}

variable "private_subnets_tags"{
    type = map 
  default = {}
}

variable "database_subnet_cidrs" {
    type = list
}

variable "database_subnets_tags"{
    type = map 
  default = {}
}

variable "public_route_table_tags"{
    type = map 
  default = {}
}


variable "private_route_table_tags"{
    type = map 
  default = {}
}


variable "database_route_table_tags"{
    type = map 
  default = {}
}


variable "eip_tags"{
    type = map 
  default = {}
}

variable "nat_gateway_tags"{
    type = map 
  default = {}
}

variable "is_peering_required" {
  type = bool
  default = true
}





