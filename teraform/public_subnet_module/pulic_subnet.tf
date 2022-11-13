variable "vpc_id" {}

resource "aws_subnet" "public-dev" {
  vpc_id  = "${var.vpc_id}"
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-southeast-2a"
  map_public_ip_on_launch = "true"

  tags  = {
    Name = "Public-dev-subnet"
    Environment = "Dev"
  }
}


output "public_subnet_id_output" {
    value = "${aws_subnet.public-dev.id}"
}
