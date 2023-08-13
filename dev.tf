resource "scaleway_instance_ip" "ip_dev" {
  zone = var.zone
}

resource "scaleway_instance_server" "dev" {
  type              = "DEV1-S"
  image             = "ubuntu_jammy"
  tags              = ["develop", "public"]
  zone              = var.zone
  name              = "Bastion"
  enable_dynamic_ip = "false"
  ip_id             = scaleway_instance_ip.ip_dev.id
}