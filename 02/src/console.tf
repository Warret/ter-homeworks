##Этот файл для 7 задания!!
locals {
  
  #local.test_list[1]
  #length(local.test_list)
  test_list = ["develop", "staging", "production"]

  #local.test_map["admin"]
  test_map = {
    admin = "John"
    user  = "Alex"
  }
  #"${local.test_map["admin"]} is admin for ${local.test_list[2]} server based on OS ${local.servers[local.test_list[2]]["image"]} with ${local.servers[local.test_list[2]]["cpu"]} vcpu, ${local.servers[local.test_list[2]]["ram"]} ram and ${length(local.servers[local.test_list[2]]["disks"])} virtual disks"
  servers = {
    develop = {
      cpu   = 2
      ram   = 4
      image = "ubuntu-21-10"
      disks = ["vda", "vdb"]
    },
    stage = {
      cpu   = 4
      ram   = 8
      image = "ubuntu-20-04"
      disks = ["vda", "vdb"]
    },
    production = {
      cpu   = 10
      ram   = 40
      image = "ubuntu-20-04"
      disks = ["vda", "vdb", "vdc", "vdd"]
    }
  }
}

