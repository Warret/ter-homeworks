# Yandex VPC Local Module

Модуль для создания сети и подсети в Yandex Cloud.

<!-- BEGIN_TF_DOCS -->


## Inputs (Аргументы)
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr"></a> [cidr](#input\_cidr) | CIDR-блок для подсети | `string` | `"10.0.1.0/24"` | no |
| <a name="input_env_name"></a> [env\_name](#input\_env\_name) | Имя окружения (develop, production, stage) | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | Зона доступности для подсети | `string` | `"ru-central1-a"` | no |

## Outputs (Возвращаемые значения)
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_id"></a> [network\_id](#output\_network\_id) | ID созданной VPC-сети |
| <a name="output_subnet_cidr"></a> [subnet\_cidr](#output\_subnet\_cidr) | CIDR-блок подсети |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | ID созданной подсети |
| <a name="output_subnet_zone"></a> [subnet\_zone](#output\_subnet\_zone) | Зона, в которой создана подсеть |
<!-- END_TF_DOCS -->
