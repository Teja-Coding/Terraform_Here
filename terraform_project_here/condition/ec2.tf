resource "aws_instance" "terraform" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.medium"
  vpc_security_group_ids = [aws_security_group.all_my_security.id]

  tags = {
    Name = "terraform"
    terraform="ture"
  }
}

resource "aws_security_group" "all_my_security" {
  name   = "all_my_security"

  egress {
    from_port        = 0 
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    ingress {
    from_port        = 0 
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags={
    Name = "all_my_security"
    terraform="ture"
  }
}   