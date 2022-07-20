resource "scaleway_instance_ip" "ip_public" {
  zone = var.zone
}

resource "scaleway_instance_server" "bastion" {
  type              = "DEV1-S"
  image             = "ubuntu_focal"
  tags              = ["bastion", "public"]
  zone              = var.zone
  name              = "Bastion"
  enable_dynamic_ip = "false"
  ip_id             = scaleway_instance_ip.ip_public.id
}
