variable "ubuntu_image" {
  type        = string
  default     = "ubuntu-2404-lts"
  description = "Version image ubuntu"
}

variable "vm_web_platform_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Name for VM"
}

variable "standard" {
  type        = string
  default     = "standard-v3"
  description = "Id for VM standard"
}

#variable "vm_web_cores" {
#  type    = number
#  default = 2
#}

#variable "vm_web_memory" {
#  type    = number
#  default = 1
#}

#variable "vm_web_core_fraction" {
#  type    = number
#  default = 20
#}


variable "vm_db_platform_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "Name for VM"
}

#variable "vm_db_cores" {
#  type    = number
#  default = 2
#}

#variable "vm_db_memory" {
#  type    = number
#  default = 2
#}

#variable "vm_db_core_fraction" {
#  type    = number
#  default = 20
#}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vm_db_vpc_name" {
  type        = string
  default     = "develop-db-subnet"
  description = "VPC network & subnet name"
}
