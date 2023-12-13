variable "project_name" {
  default = "roboshop"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "common_tags" {
  type = map
  default = {
    Name = "roboshop"
    Terraform = "true"
    Environment = "Dev"
  }
}

variable "public_subnet_cidr" {
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "private_subnet_cidr" {
  default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "database_subnet_cidr" {
  default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "rds_username" {
  type = string
  default = "timingadmin"
}

variable "sgn" {
  type = string
  default = "sgn"
}