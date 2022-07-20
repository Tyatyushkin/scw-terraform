resource "scaleway_object_bucket" "main" {
  name = var.bucket_name
  region = var.reg
  acl  = "private"
}