terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=1.12.0"
}

resource "yandex_vpc_network" "this" {
  name = "${var.env_name}-network"
}

resource "yandex_vpc_subnet" "this" {
  name           = "${var.env_name}-subnet-${var.zone}"
  zone           = var.zone
  network_id     = yandex_vpc_network.this.id
  v4_cidr_blocks = [var.cidr]
}
