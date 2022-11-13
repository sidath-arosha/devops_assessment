variable "public_sg_id" {}
variable "public_subnet_id" {}
variable "key_pair" {}

variable "ubuntu-ami" {
  default = "ami-055166f8a8041fbf1"
}

resource "aws_instance" "test-ec2" {
  ami = "${var.ubuntu-ami}"
  instance_type = "t2.micro"
  key_name = "${var.key_pair}"
  vpc_security_group_ids = ["${var.public_sg_id}"]
  subnet_id = "${var.public_subnet_id}"
  root_block_device {
      volume_size     = "10"
      volume_type     = "gp2"
  }

  tags = {
    Name = "test-ec2"
  }
}

