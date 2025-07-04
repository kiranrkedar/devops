module "vpc" {
  source = "../../../modules/aws/vpc" # write path of your module

  # Change the values according to your need
  region               = "ap-south-1"
  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24"]
  availability_zones   = ["ap-south-1a", "ap-south-1b"]
}

output "print_vpcId" {
  value = module.vpc.vpcId
}
