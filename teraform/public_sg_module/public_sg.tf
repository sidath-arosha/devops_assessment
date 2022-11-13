variable "vpc_id" {}

resource "aws_security_group" "public-dev-sg" {
  name =  "public-dev-sg"
  description = "allow trafic"
  vpc_id  = "${var.vpc_id}"
  tags = {
      name = "Demo Subnets in and out"
  }
  
   ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

}

output "public_sg_id_output" {
    value = "${aws_security_group.public-dev-sg.id}"
}
