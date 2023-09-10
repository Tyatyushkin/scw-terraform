resource "scaleway_instance_ip" "ip_dev" {
  zone = var.zone
}

resource "scaleway_instance_server" "dev" {
  type              = "DEV1-S"
  image             = "centos_stream_9"
  tags              = ["develop", "public"]
  zone              = var.zone
  name              = "devops"
  enable_dynamic_ip = "false"
  ip_id             = scaleway_instance_ip.ip_dev.id
}
