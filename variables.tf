variable "vpc_cidr_block" {
  description = "Please provide CIDR address to create a new VPC"

}
variable "subnet_cidr_block" {
  description = "please provide subnet cidr block"
}

variable "vpc_tag" {
    description = "Please provide vpc name"
}

variable "subnet_tag_name" {
  description = "Please provide subnet name"
}

variable "igw_name" {
  description = "Please provide internet gateway name"
}

variable "rt_name" {
  description = "Please provide route table name"
}
variable "sg_name" {
  description = "Please provide security group name"
}