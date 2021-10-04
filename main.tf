provider "aws" {
 region = "us-east-2"
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
  #count = 5002
  #ami                         = var.win_ami
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.nano"
  #subnet_id     = var.subnet
  tags          = merge({ "Name" = format("k.kotov-test -> %s -> %s", substr("🤔🤷", 0, 1), data.aws_ami.ubuntu.name) }, "")
  timeouts {
    create = "9m"
    delete = "15m"
  }
}

output "sensitive" {
  sensitive = true
  value     = "VALUE"
}
