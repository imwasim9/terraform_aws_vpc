variable "vpc_cidr" {
  type = string
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_tags" {
  default = {}
}

variable "igw_tags" {
  default = {}
}

variable "public_subnet_cidr" {
  type = list
}

variable "public_subnet_tags"{
  default ={}
}

variable "private_subnet_cidr" {
  type = list
}

variable "private_subnet_tags"{
  default ={}
}

variable "database_subnet_cidr" {
  type = list
}

variable "database_subnet_tags"{
  default ={}
}

variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}

variable "eip_tags"{
  default = {}
}

variable "nat_tags"{
  default = {}
}