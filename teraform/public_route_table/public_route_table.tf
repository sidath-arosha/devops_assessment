variable "vpc_id" {}
variable "public_subnet_id" {}
variable "igw_id" {}

resource "aws_route_table" "public-dev-rt" {
  vpc_id = "${var.vpc_id}"
  tags = {
    Name  = "internet-rt"
  }
}

resource "aws_route_table_association" "peblic-sub-a" {
  subnet_id = "${var.public_subnet_id}"
  route_table_id = "${aws_route_table.public-dev-rt.id}"
}

resource "aws_route" "public-route" {
  route_table_id = "${aws_route_table.public-dev-rt.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = "${var.igw_id}"
  depends_on = [aws_route_table.public-dev-rt]

}
