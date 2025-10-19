# -> AWS EC2 instance resource
resource "aws_instance" "Learning_count" {

  count = length(var.instances)    //count loop here  //lenght funciton
  
  # AMI ID to use for the instance (from variable)
  ami = var.ami_id

  # Instance type (from variable)
  instance_type = var.instance_type

  # Attach the instance to a security group
  # Using the ID of the security group created below
  vpc_security_group_ids = [aws_security_group.count_security_group.id]

  # Assign tags to the instance (from variable)
  tags = {
    Name = var.instances[count.index]
    Terraform = true
  }
}
