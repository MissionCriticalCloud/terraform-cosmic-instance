output "id" {
  description = "Iinstance ID"
  value       = cosmic_instance.default.id
}

output "ip_address" {
  description = "Instance IP address"
  value       = cosmic_instance.default.ip_address
}

output "name" {
  description = "Instance name"
  value       = cosmic_instance.default.name
}
