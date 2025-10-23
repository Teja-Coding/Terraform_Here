variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "sg_ids" {
  type = list
  default = ["sg-08fb574da3e1f9a36"]
}

#optional
variable "tags" {
  type = map
  default = {
    Name = "module-dome here"
  }
}