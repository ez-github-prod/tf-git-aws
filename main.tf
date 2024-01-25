module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.5.1"
  cidr    = var.vpc_cidr
  azs     = var.vpc_azs
  public_subnets = var.public_subnet_cidrs
}
