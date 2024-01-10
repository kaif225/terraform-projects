variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "aws_instance" {
  type    = string
  default = "t2.micro"

}

variable "aws_key-pair" {
  type    = string
  default = "terraform-key" #key of this name is created in aws and we saved it in our folder
}

variable "instance_type_list" {
  type    = list(string)
  default = ["t2.micro", "t2.small"]
}


variable "instance_type_map" {
  type = map(any)
  default = {
    dev  = "t2.micro"
    stag = "t2.small"
    prod = "t2.large"

  }

}
