variable "location"{
type = string
default = "westeurope"
}

variable "vm_size"{
type = string
default = "standard_d2s_v3"
}

variable "managed_disk_type"{
type = string
default = "premium_lrs"
}

variable "vm_image_id" {
description = The id of the shared image to create the VM's
default = null
type =string
}
variable "vm_storage_disk_caching"{
type = string
default = "readwrite"
}

variable "vm_count" {
type = number
default = 1
}

variable "nsg_id"
{ description= the id of the nsg to associate the network interface
  type = string
}

variable "vm_publisher"{
type = string
default = "microsoftsqlserver"
}
variable "vm_offer"{
type = string
default = "sql2019-ws2019"
}
variable "vm_sku"{
type = string
default ="enterprisedbengineonly"
}
variable "vm_version"{
type= string
default = latest
}

variable "subnet_id"{
type = string
}