output "external_ip_addr" {
  value       = scaleway_instance_ip.ip_public.address
  description = "External Bastion IP"
}
output "jenkins_ip_addr" {
  value       = scaleway_instance_ip.ip_jenkins.address
  description = "External Jenkins IP"
}
output "bucket_endpoint" {
  value       = scaleway_object_bucket.main.endpoint
  description = "S3 bucket endpoint"
}