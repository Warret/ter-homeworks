output "network_id" {
  description = "ID созданной VPC-сети"
  value       = yandex_vpc_network.this.id
}

output "subnet_id" {
  description = "ID созданной подсети"
  value       = yandex_vpc_subnet.this.id
}

output "subnet_zone" {
  description = "Зона, в которой создана подсеть"
  value       = yandex_vpc_subnet.this.zone
}

output "subnet_cidr" {
  description = "CIDR-блок подсети"
  value       = yandex_vpc_subnet.this.v4_cidr_blocks
}
