# Terraform AWS VPC

This module creates the following resource.
* VPC
* Internet gateway
* 2 public subnets in us-east-1a and us-east-1b AZ
* 2 private subnest in us-east-1a and us-east-1b AZ
* 1 public route table
* 1 private route table
* 1 database route table
* 1 EIP for NAT
* NAT GateWay in public subnet 1a az
* Route table association with subnets
* vpc to default vpc peering 
* public route table to default vpc route
* default vpc main route table to created vpc route
