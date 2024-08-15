module "ec2" {
  source = "./ec2"

  #aws_region = var.region
 # instance_type = var.type
  #ec2name = var.name
}

#variable "region" {
#  type = string
#}

#variable "type" {
 # type = string
#}

#variable "name" {
 # type = string
#}

output "my-ec2" {
  value = module.ec2.instance_id
}