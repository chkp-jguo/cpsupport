variable "checkpoint" {
  description = "Configuration object for Check Point provider"
  type = object({
    server = string
    username = string
    password = string
    context  = string
    timeout = number
  })
  default = null
}

variable "services" {
  description = "Consul services monitored by Consul NIA"
  type = map(
    object({
      name = string
      address = string
      port = number
      node_address = string
      id = string
    }))
}