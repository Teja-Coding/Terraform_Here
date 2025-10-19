# -> AWS Security Group resource
resource "aws_security_group" "count_security_group" {
  
  # Name of the security group (from variable)
  name = var.sg_name

  # Ingress rules (incoming traffic)
  ingress {
    from_port   = var.from_port     # starting port
    to_port     = var.to_port       # ending port
    protocol    = var.protocol      # protocol, -1 = all
    cidr_blocks = var.cidr_blocks   # allowed IP ranges
  }

  # Egress rules (outgoing traffic)
  egress {
    from_port   = var.from_port     # starting port
    to_port     = var.to_port       # ending port
    protocol    = var.protocol      # protocol, -1 = all
    cidr_blocks = var.cidr_blocks   # allowed IP ranges
  }

  # Tags for the security group (from variable)
  tags = var.sg_tags_here
}
