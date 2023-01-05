module "vpc" {
  source = "../modules/vpc"

  env_code     = var.env_code
  vpc_cidr     = var.vpc_cidr
  private_cidr = var.private_cidr
  public_cidr  = var.public_cidr
  my_public_ip = var.my_public_ip
}
