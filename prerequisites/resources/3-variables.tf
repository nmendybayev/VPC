# Variables used in the configuration

variable "env" {
  description = "Environment name."
  type        = string
}

variable "versioning_status" {
  type = string
}

variable "read_capacity" {
  type = number
}

variable "write_capacity" {
  type = number
}