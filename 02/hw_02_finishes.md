# Задание 1
## 4. Инициализируйте проект, выполните код. Исправьте намеренно допущенные синтаксические ошибки. Ищите внимательно, посимвольно. Ответьте, в чём заключается их суть.

  ```main.tf
  data "yandex_compute_image" "ubuntu" {
    family = "ubuntu-2004-lts"
  }
```
Старое семейство. Заменим на ubuntu-2404-lts. 

```providers.tf
provider "yandex" {
  # token     = var.token
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.default_zone
  service_account_key_file = file("/root/authorized_key.json")
}
```
Указал через прямой путь и без функции file - service_account_key_file = "/root/authorized_key.json"


```main.tf
metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${file(var.vms_ssh_root_key)}"
  }
```
Меняем приватный ключ на публичный var.vms_ssh_public_root_key т.к в данном блоке требуется именно публичный

```main.tf
resource "yandex_compute_instance" "platform" standard-v3 {
  name        = "netology-develop-platform-web"
  platform_id = "standard-v3"
  resources {
    cores         = 2
    memory        = 1
    core_fraction = 20
  }
```
Заменил блок resource "yandex_compute_instance" "platform" т.к при попытке создать v4 получал ошибку Platform "standard-v4" not found. Другие зоны пробовал - безуспешно

## 5. Подключитесь к консоли ВМ через ssh и выполните команду  curl ifconfig.me. Примечание: К OS ubuntu "out of a box, те из коробки" необходимо подключаться под пользователем ubuntu: "ssh ubuntu@vm_ip_address".
Предварительно убедитесь, что ваш ключ добавлен в ssh-агент: eval $(ssh-agent) && ssh-add Вы познакомитесь с тем как при создании ВМ создать своего пользователя в блоке metadata в следующей лекции.;

<img width="850" height="430" alt="изображение" src="https://github.com/user-attachments/assets/077c8b6a-a120-44ba-8ba2-2da98145a823" />

## 6. Ответьте, как в процессе обучения могут пригодиться параметры preemptible = true и core_fraction=5 в параметрах ВМ. 
preemptible = true - делает VM прерываемой, что позволяет экономить гранд.
core_fraction=5 - в теории так же позволял бы уменьшить затраты на содержание VM. Но в моем случае используется standard-v3 и core_fraction=20

<img width="2472" height="271" alt="изображение" src="https://github.com/user-attachments/assets/6ef07dff-89a4-405d-85c1-ed8ac66b9cb9" />


# Задание 4
<img width="700" height="339" alt="изображение" src="https://github.com/user-attachments/assets/42b9675f-2126-401c-b1f5-8130816d58d5" />


# Задание 7*
local.test_list[1]
length(local.test_list)
local.test_map["admin"]
"${local.test_map["admin"]} is admin for ${local.test_list[2]} server based on OS ${local.servers[local.test_list[2]]["image"]} with ${local.serve>

# Задание 8 
```variables.tf
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
```
var.test[0]["dev1"][0]

# Задание 9 
<img width="771" height="326" alt="изображение" src="https://github.com/user-attachments/assets/1b1850d5-6ad8-46a7-af99-41fa8ef22c8d" />

<img width="742" height="316" alt="изображение" src="https://github.com/user-attachments/assets/f3a10885-0c65-46a4-a71e-db20aebac627" />


