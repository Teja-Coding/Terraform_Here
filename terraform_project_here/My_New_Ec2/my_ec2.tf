# Create an EC2 instance in AWS
resource "aws_instance" "my_terraform_ec2" {

  # AMI ID - tells which OS image to use (like Windows or Linux)
  ami = "ami-09c813fb71547fc4f"

  # Instance type - size of the server (CPU and memory)
  instance_type = "t3.micro"

  # Attach a security group to control network access
  vpc_security_group_ids = [aws_security_group.my_security_here.id]

  # Tags - names or labels for easy identification in AWS
  tags = {
    Name = "my_terraform_ec2"   # Instance name in AWS
    terraform = true            # Tag to show it's created using Terraform
  }
}