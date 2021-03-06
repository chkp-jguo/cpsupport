terraform {
    required_version = ">= 0.13"
}

# Example
# resource "checkpoint_management_dynamic_object" "dynamic_object" {
#   name = "ABC_123"
#   comments = "Consul"
#   color = "blue"
#   tags = [
#   "svcid-192.168.56.1",
#   "svcid-192.168.56.2",
#   "svcid-192.168.56.3"
#       ]
# }

# Dynamic Object (Consul Service)
resource "checkpoint_management_dynamic_object" "dynamic_object" {
  for_each = local.grouped
  name     = each.key
  comments = "consul"
  tags = ["need help to output in above format.]
}

locals {
    service_ids = transpose({
        for id, s in var.services : id => [s.name]
    })
    grouped = {
        for name, ids in local.service_ids:
          name => [for id in ids : var.services[id]]
    }
}

output "services_output" {
    value = local.grouped
}