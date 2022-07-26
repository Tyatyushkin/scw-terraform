resource "scaleway_instance_ip" "ip_jenkins" {
  zone = var.zone
}

resource "scaleway_instance_server" "jenkins" {
  type              = "DEV1-S"
  image             = "ubuntu_focal"
  tags              = ["jenkins", "public"]
  zone              = var.zone
  name              = "Jenkins"
  enable_dynamic_ip = "false"
  ip_id             = scaleway_instance_ip.ip_jenkins.id
}