# Create a Security Group in AWS
resource "aws_security_group" "my_security_here" {

  # Name of the security group
  name = "my_security_here"

  # Ingress rule - controls incoming traffic
  ingress {
    from_port   = 0                # Allow traffic from any port
    to_port     = 0                # Allow traffic to any port
    protocol    = "-1"             # "-1" means all protocols (TCP, UDP, etc.)
    cidr_blocks = ["0.0.0.0/0"]    # Allow from anywhere (all IPs)
  }

  # Egress rule - controls outgoing traffic
  egress {
    from_port   = 0                # Allow all outgoing ports
    to_port     = 0                # Allow all outgoing ports
    protocol    = "-1"             # All protocols allowed
    cidr_blocks = ["0.0.0.0/0"]    # Allow to anywhere (all IPs)
  }

  # Tags - labels to identify the security group
  tags = {
    Name      = "my_security_here"  # Name shown in AWS console
    terraform = "true"              # Shows it's created using Terraform
  }
}
