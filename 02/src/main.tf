resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = [var.default_cidr[0]]
  route_table_id = yandex_vpc_route_table.nat_rt.id
}


data "yandex_compute_image" "ubuntu" {
  family = var.ubuntu_image
}
resource "yandex_compute_instance" "platform_web" {
  name        = local.vm_web_name
  hostname    = local.vm_web_name
  platform_id = var.standard
  resources {
    cores         = var.vms_resources["web"].cores
    memory        = var.vms_resources["web"].memory
    core_fraction = var.vms_resources["web"].core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size     = var.vms_resources["web"].hdd_size
      type     = var.vms_resources["web"].hdd_type
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = false
  }

  metadata = var.vm_metadata
}

#-----------------------------------VM_DB-------------------------------------------

resource "yandex_vpc_subnet" "develop_db" {
  name           = var.vm_db_vpc_name
  zone           = var.vm_db_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = [var.default_cidr[1]]
  route_table_id = yandex_vpc_route_table.nat_rt.id
}

resource "yandex_compute_instance" "platform_db" {
  name        = local.vm_db_name
  hostname    = var.vm_db_platform_name
  platform_id = var.standard
  zone        = var.vm_db_zone
  resources {
    cores         = var.vms_resources["db"].cores
    memory        = var.vms_resources["db"].memory
    core_fraction = var.vms_resources["db"].core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size     = var.vms_resources["db"].hdd_size
      type     = var.vms_resources["db"].hdd_type
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop_db.id
    nat       = false
  }

  metadata = var.vm_metadata

}

resource "yandex_vpc_gateway" "nat_gw" {
  name = "nat-gateway"
  shared_egress_gateway {}
}

resource "yandex_vpc_route_table" "nat_rt" {
  network_id = yandex_vpc_network.develop.id
  name       = "nat-route-table"

  static_route {
    destination_prefix = "0.0.0.0/0"
    gateway_id         = yandex_vpc_gateway.nat_gw.id
  }
}



