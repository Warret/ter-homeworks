###cloud vars


variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
  default     = "b1g4rmmolkh6vpm6rd1v"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
  default     = "b1gsdvhv3sc9c595bk46"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vms_resources" {
  description = "Ресурсы виртуальных машин"
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    hdd_size      = number
    hdd_type      = string
  }))
}

variable "vm_metadata" {
  description = "Метаданные для всех виртуальных машин"
  type        = map(string)
}

variable "test" {
  description = "Список серверов с командами подключения и IP-адресами"
  type        = list(map(list(string)))
  
  default = [
    {
      "dev1" = [
        "ssh -o 'StrictHostKeyChecking=no' ubuntu@62.84.124.117",
        "10.0.1.7",
      ]
    },
    {
      "dev2" = [
        "ssh -o 'StrictHostKeyChecking=no' ubuntu@84.252.140.88",
        "10.0.2.29",
      ]
    },
    {
      "prod1" = [
        "ssh -o 'StrictHostKeyChecking=no' ubuntu@51.250.2.101",
        "10.0.1.30",
      ]
    },
  ]
}



###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "/home/admin/.ssh/ssh-key-1783352716018"
  description = "ssh-keygen -t ed25519"
}

variable "vms_ssh_public_root_key" {
  type        = string
  default     = "/home/admin/.ssh/ssh-key-1783352716018.pub"
  description = "Паблик ssh ключ для terraform аккаунта"
}
