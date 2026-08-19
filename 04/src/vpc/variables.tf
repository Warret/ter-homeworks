variable "env_name" {
  description = "Имя окружения (develop, production, stage)"
  type        = string
}

variable "zone" {
  description = "Зона доступности для подсети"
  type        = string
  default     = "ru-central1-a"
}

variable "cidr" {
  description = "CIDR-блок для подсети"
  type        = string
  default     = "10.0.1.0/24"
}
