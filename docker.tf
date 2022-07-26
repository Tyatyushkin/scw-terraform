resource "scaleway_instance_ip" "ip_docker" {
  zone = var.zone
}

resource "scaleway_instance_server" "docker" {
  type              = "DEV1-S"
  image             = "ubuntu_focal"
  tags              = ["docker", "public"]
  zone              = var.zone
  name              = "Docker"
  enable_dynamic_ip = "false"
  ip_id             = scaleway_instance_ip.ip_docker.id
}