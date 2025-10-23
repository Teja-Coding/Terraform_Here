output  "public_ip" {
  value       = module.catalogue.private_ip
  description = "public IP of the instance created"
}

output  "private_ip" {
  value       = module.catalogue.private_ip
  description = "private IP of the instance created"
}

output "instance_id" {
  value = module.catalogue.instance_id
}