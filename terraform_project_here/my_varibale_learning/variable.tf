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
    Name      = "varible_instance_here"  # tag Name
    Terraform = true                     # tag indicating Terraform managed
    Project   = "my project here"        # tag for project name
  }
}

# -> Variables for the Security Group

# Security group name
variable "sg_name" {
  type        = string
  default     = "varible_sg_here"       
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
    Name      = "varible_sg_here"       # tag Name
    Terraform = true                     # tag indicating Terraform managed
  }
}
