# -> AWS EC2 instance resource
resource "aws_instance" "varible_instance_here" {
  
  # AMI ID to use for the instance (from variable)
  ami = var.ami_id

  # Instance type (from variable)
  instance_type = var.env == "dev" ? "t3.medium": "t3.micro" 

  # Attach the instance to a security group
  # Using the ID of the security group created below
  vpc_security_group_ids = [aws_security_group.varible_sg_here.id]

  # Assign tags to the instance (from variable)
  tags = var.my_ec2_tags
}
