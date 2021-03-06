# LKE Cluster 
variable "enable_cluster" {
  type    = bool
  default = "false"
}

variable "k8s_version" {
  type    = string
  default = "1.21"
}

variable "label" {
  type    = string
  default = "foodyfood-test"
}

variable "region" {
  type    = string
  default = "eu-central"
}

variable "tags" {
  type    = list(string)
  default = ["foodyfood-test"]
}

variable "pools" {
  description = "g6-standard-2 is a 2 CPU node, g6-standard-4 is a 4 CPU node and so on."
  type = list(object({
    type  = string
    count = number
    min   = number
    max   = number
  }))
  default = [
    {
      type  = "g6-standard-2"
      count = 1
      min   = 1
      max   = 2
    }
  ]
}

variable "prefix" {
  description = "Prefix for linode infra"
  type        = string
  default     = "foodyfood-test"
}
