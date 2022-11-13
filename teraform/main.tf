
provider "aws" {
     region      = "ap-southeast-2"
     access_key  = "AKIA524FLYISN7EOM5PC"
     secret_key  = "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"
}

module "vpc_module"{
      source = "./vpc_module"
}

module "public_subnet_module"{
      vpc_id = "${module.vpc_module.vpc_id_output}"
      source = "./public_subnet_module"
}

module "igw_module"{
      vpc_id = "${module.vpc_module.vpc_id_output}"
      source = "./igw_module"
}

module "public_route_table"{
      igw_id = "${module.igw_module.igw_id_output}"
      public_subnet_id = "${module.public_subnet_module.public_subnet_id_output}"
      vpc_id = "${module.vpc_module.vpc_id_output}"
      source = "./public_route_table"
}

module "public_sg_module"{
      vpc_id = "${module.vpc_module.vpc_id_output}"
      source = "./public_sg_module"
}

module "key_pair_module"{
      source = "./key_pair_module"
}

module "web_ec2_module"{
      key_pair = "${module.key_pair_module.key_pair_output}"
      public_sg_id = "${module.public_sg_module.public_sg_id_output}"
      public_subnet_id = "${module.public_subnet_module.public_subnet_id_output}"
      source = "./web_ec2_module"
}
