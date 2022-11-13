terraform {
  backend "s3" {
    bucket = "terraform-demo-sidath"
    key    = "infra/demo/terraform.tfstate"
    region = "us-east-1"
    access_key  = "AKIA524FLYISN7EOM5PC"
    secret_key  = "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"
  }
}
