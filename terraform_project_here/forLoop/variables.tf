variable "instances" {
  # default = ["mongodb","redies","mysql","rabbitmq"]
  default = {
    mongodb = "t3.micro"
    redies = "t3.micro"
    mysql = "t3.small"
  }
}

variable "zone_id" {
  default = "Z01877457DKZDKQFO78G"
}

variable "domain_name" {
  default = "fineshit.shop"
}