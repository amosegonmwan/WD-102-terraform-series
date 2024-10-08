
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}


data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "wema-automation-kenmak"
    key    = "vpc/terraform.tfstate"
    region = "us-west-2"
  }
}
/*
data "terraform_remote_state" "network" {
  backend = "local"
  config = {
      path    = "../vpc-call/terraform.tfstate"
  }
}
*/
