module "catalogue" {
  source = "../terraform_module_learning"
  ami_id = var.ami_id
  instance_type = var.instance_type
  sg_ids = var.sg_ids
  tags = var.tags
}