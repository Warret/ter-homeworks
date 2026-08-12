terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 4.5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }
  }
}

variable "cloud_vm_ip" { type = string }
variable "cloud_vm_user" { type = string }
variable "ssh_key_path" { type = string }

#task3
provider "docker" {
  host     = "ssh://${var.cloud_vm_user}@${var.cloud_vm_ip}:22"
  ssh_opts = ["-i", "${var.ssh_key_path}", "-o", "StrictHostKeyChecking=no", "-o", "UserKnownHostsFile=/dev/null"]
}

#task4
resource "random_password" "random_string" {
  length      = 16
  special     = false
  min_upper   = 1
  min_lower   = 1
  min_numeric = 1
}

resource "docker_image" "img_mysql" {
  name = "mysql:8"
}

resource "docker_container" "mysql" {
  image = docker_image.img_mysql.name
  name  = "example_${random_password.random_string.result}"
  restart = "always"
  env = [
    "MYSQL_ROOT_PASSWORD=${random_password.random_string.result}",
    "MYSQL_DATABASE=wordpress",
    "MYSQL_USER=wordpress",
    "MYSQL_PASSWORD=${random_password.random_string.result}",
    "MYSQL_ROOT_HOST=%"
  ]
  ports {
    internal = 3306
    external = 3306
    ip       = "127.0.0.1"
  }
}
