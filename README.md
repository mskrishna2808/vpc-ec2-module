To create a vpc in aws, please use below code

module "vpc" {
    source = "git::https://github.com/mskrishna2808/vpc-ec2-module.git?ref=1.0.0"

    vpc_cidr_block = "10.10.0.0/16"
    subnet_cidr_block = "10.10.0.0/17"
    vpc_tag = "module-vpc"
    subnet_tag_name = "module-subnet"
    igw_name = "module-igw"
    rt_name = "module-rt"
    sg_name = "module-sg"
 
}

To create a vpc & ec2 instance, please use below code

module "vpc" {
    source = "git::https://github.com/mskrishna2808/vpc-ec2-module.git?ref=2.0.0"

    vpc_cidr_block = "10.10.0.0/16"
    subnet_cidr_block = "10.10.0.0/17"
    vpc_tag = "module-vpc"
    subnet_tag_name = "module-subnet"
    igw_name = "module-igw"
    rt_name = "module-rt"
    sg_name = "module-sg"

    ami = "ami-026b57f3c383c2eec"
    instance_type = "t2.micro"
    key_pair = "lab_keypair"
    iam_role = "IamInstanceRole"
    instance_name = "terraform-instance"
  
}

To see the outputs of ec2 instance follow the below instructions.
1. Please create a file called outputs.tf
2. Copy the below content into outputs.tf

output "instance_dns_name" {
  value = module.vpc.instance_dns_name
}

output "instance_ip" {
  value = module.vpc.instance_ip
}


