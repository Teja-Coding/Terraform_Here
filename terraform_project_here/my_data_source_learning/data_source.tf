data "aws_ami" "joindevops" {
  owners           = ["973714476881"]
  most_recent = true

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["EBS"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}   

output "ami_id_here" {
  value = data.aws_ami.joindevops    # to print it and check the ami id
}


# data "aws_instance" "getting_instance_details" {
#   instance_id = " enter you instance id here "   #where is already create by manally
# }

# output "instance_datails" {
#   value = data.aws_instance.getting_instance_details
# }

