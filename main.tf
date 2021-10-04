provider "aws" {
 region = var.region
}
resource "aws_instance" "ubuntu" {
  count = 2000
  ami                         = var.win_ami
  instance_type = var.instance_type1
  subnet_id     = var.subnet
  tags          = merge({ "Name" = format("m.honcharevskyi -> %s", substr("🤔🤷", 0, 1)) }, var.tags)
  timeouts {
    create = "9m"
    delete = "15m"
  }
}

