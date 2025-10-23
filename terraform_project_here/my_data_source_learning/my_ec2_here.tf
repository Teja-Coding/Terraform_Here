# -> AWS EC2 instance resource
resource "aws_instance" "learn_data_source" {

  for_each = var.instances   #acessing map variable by using for each here
  
  # AMI ID to use for the instance (from variable)
  ami = data.aws_ami.joindevops //data.aws_ami.joindevops    #getting form data sourece 

  # Instance type (from variable)
  instance_type = each.value      #accessing value form map by uisng the each.value

  # Attach the instance to a security group
  # Using the ID of the security group created below
  vpc_security_group_ids = [aws_security_group.data_source_security_group.id]

  # Assign tags to the instance (from variable)
  tags = {
    Name = each.key  #accessing the key form map by using the each.kay 
    Terraform = true
  }
}
