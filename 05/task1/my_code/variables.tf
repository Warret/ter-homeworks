###cloud vars

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
  default = "b1g4rmmolkh6vpm6rd1v"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
  default = "b1gsdvhv3sc9c595bk46"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
}

###common vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "/home/admin/.ssh/ssh-key-1783352716018.pub"
  description = "ssh-keygen -t ed25519"
}



