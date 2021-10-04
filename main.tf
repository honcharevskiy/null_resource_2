provider "aws" {
 region = var.region
}
data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"]
}
resource "aws_instance" "ubuntu" {
  count = 5002
  ami                         = var.win_ami
  instance_type = var.instance_type1
  subnet_id     = var.subnet
tags          = merge({ "Name" = format("m.honcharevskyi -> %s -> %s", substr("🤔🤷", 0, 1), data.aws_ami.ubuntu.name) }, var.tags)
  timeouts {
    create = "9m"
    delete = "15m"
  }
}

output "sensitive" {
  sensitive = true
  value     = "VALUE"
}
