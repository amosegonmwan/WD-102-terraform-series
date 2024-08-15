# Get latest AMI ID for Amazon Linux2 OS
data "aws_ami" "amzLinux2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-gp2"]
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

output "amzLin1" {
  value = data.aws_ami.amzLinux1.id
}

output "amzLin" {
  value = data.aws_ami.amzLinux2.id
}

output "ubuntu" {
  value = data.aws_ami.ubuntu.id
}

output "rhel" {
  value = data.aws_ami.rhel.id
}

data "aws_ami" "amzLinux1" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["al2023-ami-*-kernel-6.1-x86_64"]
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