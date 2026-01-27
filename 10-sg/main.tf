# Using Open Source module
# module "catalogue" {
#   source = "terraform-aws-modules/security-group/aws"

#   name        = "${local.common_name_suffix}-catalogue"
#   use_name_prefix = false
#   description = "Security group for catalogue with custom ports open within VPC, egress all teraffic"
#   vpc_id      = data.aws_ssm_parameter.vpc_id.value
# }


//https://github.com/user-bolla/terraform-aws-sg.git

module "sg" {
  count = length(var.sg_names)
  source = "git::https://github.com/user-bolla/terraform-aws-sg.git?ref=main"
  project_name = var.project_name
  environment  = var.environment
  sg_name      = var.sg_names[count.index]
  sg_description = "created for ${var.sg_names[count.index]}"
  vpc_id       = local.vpc_id
}

#Frontend accepting traffic from frontend_alb
# resource "aws_security_group_rule" "frontend_frontend_alb" {
#   type = "ingress"
#   security_group_id = module.sg[index(var.sg_names, "frontend")].sg_id
#   source_security_group_id = module.sg[index(var.sg_names, "frontend-load-balancer")].sg_id  #Frontend loadbalanced SG-ID
#   from_port         = 80
#   protocol       = "tcp"
#   to_port           = 80
# }