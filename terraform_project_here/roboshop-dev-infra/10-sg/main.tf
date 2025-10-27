# module "vote_service_sg" {
#   source = "terraform-aws-modules/security-group/aws"

#   name        = "${local.common_name_suffix}-catalogue"
#   use_name_prefix = false
#   description = "Security group for catalogue with custom ports open within vpc, egress all traffic"
#   vpc_id      = data.aws_ssm_parameter.vpc_id.value

# }

module "sg" {
      source = "git::https://github.com/Teja-Coding/Terraform_Here.git//terraform_project_here/terraform-aws-sg?ref=main"
      count = length(var.sg_names)
      project_name = var.project_name   
      environment = var.environment
      sg_name = var.sg_names[count.index]
      sg_description = "created for ${var.sg_names[count.index]}"
      vpc_id = local.vpc_id

}