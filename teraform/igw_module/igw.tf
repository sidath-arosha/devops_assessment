variable "vpc_id" {}

resource "aws_internet_gateway" "dev-igw" {
  vpc_id = "${var.vpc_id}"

  tags = {
    Name = "dev-igw"
  }
}


output "igw_id_output" {
    value = "${aws_internet_gateway.dev-igw.id}"
}
