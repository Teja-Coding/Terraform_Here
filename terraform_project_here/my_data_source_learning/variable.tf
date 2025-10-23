# -> Variables for the EC2 instance

# AMI ID to use for launching the EC2 instance
variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"   # default Amazon Machine Image ID
}
# EC2 instance type (size)
variable "instance_type" {
  type    = string
  default = "t3.micro"                # default instance type
}
# Tags to assign to the EC2 instance
variable "my_ec2_tags" {
  type = map                           # map = key-value pairs
  default = {
    Name      = "learn_data_source"  # tag Name
    Terraform = true                     # tag indicating Terraform managed
    Project   = "my project here"        # tag for project name
  }
}
# -> Variables for the Security Group
# Security group name
variable "sg_name" {
  type        = string
  default     = "data_source_security_group"       
  description = "security group name to attach to EC2 instance here"
}
# Starting port for security group rule
variable "from_port" {
  type    = number
  default = 0                           # default allow all ports start
}
# Ending port for security group rule
variable "to_port" {
  type    = number
  default = 0                           # default allow all ports end
}
# Protocol for security group rule
variable "protocol" {
  type    = string
  default = "-1"                        # -1 means all protocols
}
# CIDR blocks allowed in security group rule
variable "cidr_blocks" {
  type    = list
  default = ["0.0.0.0/0"]               # allow traffic from all IPs
}
# Tags to assign to the security group
variable "sg_tags_here" {
  type = map
  default = {
    Name      = "data_source_security_group"       # tag Name
    Terraform = true                     # tag indicating Terraform managed
  }
}
variable "env" {
  type = string
  default = "dev"
}

variable "zone_id" {
    default = "Z01877457DKZDKQFO78G"
}

variable "domain_name" {
    default = "fineshit.shop"
}
# Define instance configurations
variable "instances" {
  # Example 1: List format (used with count.index)
  # default = ["mongodb", "redis", "mysql", "rabbitmq"]

  # Example 2: Map format (used with for_each loop)
  # Each key-value pair represents:
  #   - Key   → instance name (each.key)
  #   - Value → instance type (each.value)
  default = {
    mongodb = "t3.micro"
    redis   = "t3.small"
    mysql   = "t3.micro"
  }

  
}

