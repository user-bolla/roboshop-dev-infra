module "vpc" {
 # source = "../terrform-aws-vpc"
  source = "git::https://github.com/user-bolla/terrform-aws-vpc.git?ref=main"
  #VPC
  project_name = var.project_name
  environment  = var.environment
  vpc_cidr     = var.vpc_cidr
  vpc_tags = var.vpc_tags
  //igw_tags = var.igw_tags
  # public subnets
  public_subnet_cidrs = var.public_subnet_cidrs
  # private subnets
  private_subnet_cidrs = var.private_subnet_cidrs
  # database subnets
  database_subnet_cidrs = var.database_subnet_cidrs

  is_peering_required = true
}
# data "aws_availability_zones" "available" {
#   state = "available"
# } 