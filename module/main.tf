module "s3" {
    source = "./s3"
    bucket = var.bucket
    depends_on = [module.vpc]
  
}
module "vpc" {
  source   = "./vpc"
  cidr     = var.cidr
  vpc_name = var.vpc_name

}