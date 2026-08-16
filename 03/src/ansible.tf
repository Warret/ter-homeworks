locals {
  webservers_data = [
    for vm in yandex_compute_instance.web_vm : {
      name         = vm.name
      ansible_host = vm.network_interface[0].nat_ip_address
      fqdn         = vm.fqdn
    }
  ]

  databases_data = [
    for vm in values(yandex_compute_instance.db_vm) : {
      name         = vm.name
      ansible_host = vm.network_interface[0].nat_ip_address != "" ? vm.network_interface[0].nat_ip_address : vm.network_interface[0].ip_address
      fqdn         = vm.fqdn
    }
  ]

  storage_data = [
    {
      name         = yandex_compute_instance.storage_vm.name
      ansible_host = yandex_compute_instance.storage_vm.network_interface[0].nat_ip_address != "" ? yandex_compute_instance.storage_vm.network_interface[0].nat_ip_address : yandex_compute_instance.storage_vm.network_interface[0].ip_address
      fqdn         = yandex_compute_instance.storage_vm.fqdn
    }
  ]
}

resource "local_file" "ansible_inventory" {
  content = templatefile(
    "${path.module}/hosts.tftpl",
    {
      webservers = local.webservers_data
      databases  = local.databases_data
      storage    = local.storage_data
    }
  )
  filename = "${path.module}/inventory.ini"
}

output "ansible_inventory_content" {
  description = "Сгенерированный Ansible inventory файл"
  value       = local_file.ansible_inventory.content
}
