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


