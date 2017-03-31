variable "bootstrap_script_path" {
  default = "bootstrap.tpl"
}

variable "name" {}

variable "aws_ami_map" {
  type = "map"

  default = {
    ap-south-1-ubuntu     = "ami-95cda6fa"
    ap-southeast-1-ubuntu = "ami-f068a193"
    eu-west-1-ubuntu      = "ami-665f7d00"
    us-west-2-ubuntu             = "ami-14b07274"
  }
}

variable "aws_region_os" {}

variable "number_of_instances" {
  default = 1
}

variable "subnet_id" {}

variable "type" {
  default = "t2.micro"
}

variable "key_pair_id" {
  default = ""
}

variable "iam_instance_profile" {
  default = ""
}

variable "security_group_ids" {
  type = "list"
}

variable "root_volume_type" {
  default = "gp2"
}

variable "root_volume_size" {
  default = "30"
}

variable "zone_id" {}
