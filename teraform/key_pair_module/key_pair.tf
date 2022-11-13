resource "aws_key_pair" "web" {
  key_name   = "web"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "web" {
    content  = tls_private_key.rsa.private_key_pem
    filename = "keyfile/web.pem"
}


output "key_pair_output" {
    value = "${aws_key_pair.web.id}"
}
