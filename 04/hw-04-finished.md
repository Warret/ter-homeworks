# Задание 1 
<img width="651" height="100" alt="изображение" src="https://github.com/user-attachments/assets/5b4567dc-8d0c-43ff-b36d-7e804317fe46" />

<img width="626" height="92" alt="изображение" src="https://github.com/user-attachments/assets/68d48724-2e81-4715-b837-282a0857baa8" />

<img width="663" height="327" alt="изображение" src="https://github.com/user-attachments/assets/e6e5abcf-e3e4-4b65-8243-8cee33a11e14" />

<img width="649" height="320" alt="изображение" src="https://github.com/user-attachments/assets/33c9047a-2b26-478e-bbd7-6ac2e2a0eae9" />

```> module.marketing_vm
{
  "all" = [
    {
      "allow_recreate" = tobool(null)
      "allow_stopping_for_update" = true
      "boot_disk" = tolist([
        {
          "auto_delete" = true
          "device_name" = "fhm7omdk4cmoboaqgeka"
          "disk_id" = "fhm7omdk4cmoboaqgeka"
          "initialize_params" = tolist([
            {
              "block_size" = 4096
              "description" = ""
              "image_id" = "fd8vdod4bdi1a9h4a54e"
              "kms_key_id" = ""
              "name" = ""
              "size" = 10
              "snapshot_id" = ""
              "type" = "network-hdd"
            },
          ])
          "mode" = "READ_WRITE"
        },
      ])
      "created_at" = "2026-08-18T20:53:35Z"
      "description" = "TODO: description; {{terraform yyy managed}}"
      "filesystem" = toset([])
      "folder_id" = "b1gsdvhv3sc9c595bk46"
      "fqdn" = "marketing-marketing-instance-0.ru-central1.internal"
      "gpu_cluster_id" = ""
      "hardware_generation" = tolist([
        {
          "generation2_features" = tolist([])
          "legacy_features" = tolist([
            {
              "pci_topology" = "PCI_TOPOLOGY_V2"
            },
          ])
        },
      ])
      "hostname" = "marketing-marketing-instance-0"
      "id" = "fhmi44mn3t30s1ahjfu7"
      "labels" = tomap({
        "owner" = "student"
        "project" = "marketing"
      })
      "local_disk" = tolist([])
      "maintenance_grace_period" = ""
      "maintenance_policy" = tostring(null)
      "metadata" = tomap({
        "serial-port-enable" = "1"
        "user-data" = <<-EOT
        #cloud-config
        users:
          - name: ubuntu
            groups: sudo
            shell: /bin/bash
            sudo: ['ALL=(ALL) NOPASSWD:ALL']
            ssh_authorized_keys:
              - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCkBo5YINS9PhbskvUWeG7i5NfTWn8U5GYsQIjymDWSqO39N4gJNULeP3jZSZcq/4XgZrRZVplMXPAsFPTS75Hz3Z/nd5axW5A5XY3W+dfkIVk5/vF8OF/S9REv3tb9MfFWJlpuITLSCOO8koB/352aa9Z29pHh86GAHiha9qJcFuvNgnVKDYgTjRdWghy/aSRTxuv/S4T+z03l0/le0Ty0r+pvnOWmOzIE9l78fxYFyP2e5oVUi4W4eB8qqDHwdvovGOwcvx+Vgova8gRFk7eEM+L8jNdCYyDMlAtxvC3yF2xElr2zQTwOq3hBFGAgRqfMWpCOopqvUEK52o+VGW2B

        packages:
          - nginx

        runcmd:
          - systemctl start nginx
          - systemctl enable nginx

        EOT
      })
      "metadata_options" = tolist([
        {
          "aws_v1_http_endpoint" = 1
          "aws_v1_http_token" = 2
          "aws_v2_http_endpoint" = 1
          "aws_v2_http_token" = 1
          "gce_http_endpoint" = 1
          "gce_http_token" = 1
        },
      ])
      "name" = "marketing-marketing-instance-0"
      "network_acceleration_type" = "standard"
      "network_interface" = tolist([
        {
          "dns_record" = tolist([])
          "index" = 0
          "ip_address" = "10.0.1.32"
          "ipv4" = true
          "ipv6" = false
          "ipv6_address" = ""
          "ipv6_dns_record" = tolist([])
          "mac_address" = "d0:0d:12:21:2d:71"
          "nat" = true
          "nat_dns_record" = tolist([])
          "nat_ip_address" = "46.21.247.20"
          "nat_ip_version" = "IPV4"
          "security_group_ids" = toset([
            "enplrqr9bbv39fqh1r5k",
          ])
          "subnet_id" = "e9b8g2t8vksvfmna87q0"
        },
      ])
      "placement_policy" = tolist([
        {
          "host_affinity_rules" = tolist([])
          "placement_group_id" = ""
          "placement_group_partition" = 0
        },
      ])
      "platform_id" = "standard-v1"
      "reserved_instance_pool_id" = ""
      "resources" = tolist([
        {
          "core_fraction" = 5
          "cores" = 2
          "gpus" = 0
          "memory" = 1
        },
      ])
      "scheduling_policy" = tolist([
        {
          "preemptible" = true
        },
      ])
      "secondary_disk" = toset([])
      "service_account_id" = ""
      "status" = "running"
      "timeouts" = null /* object */
      "zone" = "ru-central1-a"
    },
  ]
  "external_ip_address" = [
    "46.21.247.20",
  ]
  "fqdn" = [
    "marketing-marketing-instance-0.ru-central1.internal",
  ]
  "internal_ip_address" = [
    "10.0.1.32",
  ]
  "labels" = [
    tomap({
      "owner" = "student"
      "project" = "marketing"
    }),
  ]
  "network_interface" = [
    tolist([
      {
        "dns_record" = tolist([])
        "index" = 0
        "ip_address" = "10.0.1.32"
        "ipv4" = true
        "ipv6" = false
        "ipv6_address" = ""
        "ipv6_dns_record" = tolist([])
        "mac_address" = "d0:0d:12:21:2d:71"
        "nat" = true
        "nat_dns_record" = tolist([])
        "nat_ip_address" = "46.21.247.20"
        "nat_ip_version" = "IPV4"
        "security_group_ids" = toset([
          "enplrqr9bbv39fqh1r5k",
        ])
        "subnet_id" = "e9b8g2t8vksvfmna87q0"
      },
    ]),
  ]
}
```
```module.analytics_vm
{
  "all" = [
    {
      "allow_recreate" = tobool(null)
      "allow_stopping_for_update" = true
      "boot_disk" = tolist([
        {
          "auto_delete" = true
          "device_name" = "fhmbc8rborn31kqnmi6k"
          "disk_id" = "fhmbc8rborn31kqnmi6k"
          "initialize_params" = tolist([
            {
              "block_size" = 4096
              "description" = ""
              "image_id" = "fd8vdod4bdi1a9h4a54e"
              "kms_key_id" = ""
              "name" = ""
              "size" = 10
              "snapshot_id" = ""
              "type" = "network-hdd"
            },
          ])
          "mode" = "READ_WRITE"
        },
      ])
      "created_at" = "2026-08-18T20:53:38Z"
      "description" = "TODO: description; {{terraform yyy managed}}"
      "filesystem" = toset([])
      "folder_id" = "b1gsdvhv3sc9c595bk46"
      "fqdn" = "analytics-analytics-instance-0.ru-central1.internal"
      "gpu_cluster_id" = ""
      "hardware_generation" = tolist([
        {
          "generation2_features" = tolist([])
          "legacy_features" = tolist([
            {
              "pci_topology" = "PCI_TOPOLOGY_V2"
            },
          ])
        },
      ])
      "hostname" = "analytics-analytics-instance-0"
      "id" = "fhmepvi8mq6fjur1td6i"
      "labels" = tomap({
        "owner" = "student"
        "project" = "analytics"
      })
      "local_disk" = tolist([])
      "maintenance_grace_period" = ""
      "maintenance_policy" = tostring(null)
      "metadata" = tomap({
        "serial-port-enable" = "1"
        "user-data" = <<-EOT
        #cloud-config
        users:
          - name: ubuntu
            groups: sudo
            shell: /bin/bash
            sudo: ['ALL=(ALL) NOPASSWD:ALL']
            ssh_authorized_keys:
              - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCkBo5YINS9PhbskvUWeG7i5NfTWn8U5GYsQIjymDWSqO39N4gJNULeP3jZSZcq/4XgZrRZVplMXPAsFPTS75Hz3Z/nd5axW5A5XY3W+dfkIVk5/vF8OF/S9REv3tb9MfFWJlpuITLSCOO8koB/352aa9Z29pHh86GAHiha9qJcFuvNgnVKDYgTjRdWghy/aSRTxuv/S4T+z03l0/le0Ty0r+pvnOWmOzIE9l78fxYFyP2e5oVUi4W4eB8qqDHwdvovGOwcvx+Vgova8gRFk7eEM+L8jNdCYyDMlAtxvC3yF2xElr2zQTwOq3hBFGAgRqfMWpCOopqvUEK52o+VGW2B

        packages:
          - nginx

        runcmd:
          - systemctl start nginx
          - systemctl enable nginx

        EOT
      })
      "metadata_options" = tolist([
        {
          "aws_v1_http_endpoint" = 1
          "aws_v1_http_token" = 2
          "aws_v2_http_endpoint" = 1
          "aws_v2_http_token" = 1
          "gce_http_endpoint" = 1
          "gce_http_token" = 1
        },
      ])
      "name" = "analytics-analytics-instance-0"
      "network_acceleration_type" = "standard"
      "network_interface" = tolist([
        {
          "dns_record" = tolist([])
          "index" = 0
          "ip_address" = "10.0.1.6"
          "ipv4" = true
          "ipv6" = false
          "ipv6_address" = ""
          "ipv6_dns_record" = tolist([])
          "mac_address" = "d0:0d:ec:fe:48:b6"
          "nat" = true
          "nat_dns_record" = tolist([])
          "nat_ip_address" = "51.250.74.175"
          "nat_ip_version" = "IPV4"
          "security_group_ids" = toset([
            "enplrqr9bbv39fqh1r5k",
          ])
          "subnet_id" = "e9b8g2t8vksvfmna87q0"
        },
      ])
      "placement_policy" = tolist([
        {
          "host_affinity_rules" = tolist([])
          "placement_group_id" = ""
          "placement_group_partition" = 0
        },
      ])
      "platform_id" = "standard-v1"
      "reserved_instance_pool_id" = ""
      "resources" = tolist([
        {
          "core_fraction" = 5
          "cores" = 2
          "gpus" = 0
          "memory" = 1
        },
      ])
      "scheduling_policy" = tolist([
        {
          "preemptible" = true
        },
      ])
      "secondary_disk" = toset([])
      "service_account_id" = ""
      "status" = "running"
      "timeouts" = null /* object */
      "zone" = "ru-central1-a"
    },
  ]
  "external_ip_address" = [
    "51.250.74.175",
  ]
  "fqdn" = [
    "analytics-analytics-instance-0.ru-central1.internal",
  ]
  "internal_ip_address" = [
    "10.0.1.6",
  ]
  "labels" = [
    tomap({
      "owner" = "student"
      "project" = "analytics"
    }),
  ]
  "network_interface" = [
    tolist([
      {
        "dns_record" = tolist([])
        "index" = 0
        "ip_address" = "10.0.1.6"
        "ipv4" = true
        "ipv6" = false
        "ipv6_address" = ""
        "ipv6_dns_record" = tolist([])
        "mac_address" = "d0:0d:ec:fe:48:b6"
        "nat" = true
        "nat_dns_record" = tolist([])
        "nat_ip_address" = "51.250.74.175"
        "nat_ip_version" = "IPV4"
        "security_group_ids" = toset([
          "enplrqr9bbv39fqh1r5k",
        ])
        "subnet_id" = "e9b8g2t8vksvfmna87q0"
      },
    ]),
  ]
}
```
