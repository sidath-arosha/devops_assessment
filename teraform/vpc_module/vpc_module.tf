resource "aws_vpc" "demo-dev" {
  cidr_block  = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = "true"

  tags = {
    Name = "Development"
    Environment = "Dev"
  }

}

output "vpc_id_output" {
    value = "${aws_vpc.demo-dev.id}"
}
