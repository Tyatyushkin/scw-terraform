output "external_ip_addr" {
  value       = scaleway_instance_ip.ip_public.address
  description = "External Bastion IP"
}