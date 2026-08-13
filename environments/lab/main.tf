module "network" {
  source = "../../modules/network"

  vpc_cidr_block            = var.vpc_cidr_block
  public_subnet_cidr_block  = var.public_subnet_cidr_block
  private_subnet_cidr_block = var.private_subnet_cidr_block
  availability_zone         = var.availability_zone
  tags                      = var.tags
}

module "security" {
  source = "../../modules/security"

  vpc_id = module.network.vpc_id
  tags   = var.tags
}

module "compute" {
  source = "../../modules/compute"

  ecr_repository_name   = var.ecr_repository_name
  instance_type         = var.ec2_instance_type
  subnet_id             = module.network.public_subnet_id
  security_group_id     = module.security.security_group_id
  instance_profile_name = module.security.instance_profile_name
  tags                  = var.tags
}

module "dns" {
  source = "../../modules/dns"

  domain_name        = var.domain_name
  record_name        = var.dns_record_name
  instance_public_ip = module.compute.instance_public_ip
}
