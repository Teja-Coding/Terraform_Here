
# Declare the data source
data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_vpc" "default" {
    default = true
}
data "aws_route_table" "main" {
  vpc_id = data.aws_vpc.default.id # Reference your VPC ID
  filter {
    name   = "association.main"
    values = ["true"]
  }
}