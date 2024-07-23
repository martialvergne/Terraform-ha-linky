# Pulls the image
#resource "docker_image" "ha-linky" {
#  name = "ubuntu:latest"
#}

# Create a container
resource "docker_container" "ha-linky" {
  image   = docker_image.ha-linky.image_id
  name    = "HA-Linky"
  env {
    SUPERVISOR_TOKEN = var.token
    WS_URL           = ws://var.ws_url/api/websocket
  }
  volumes {
    host_path        = /home/martial/linky
    container_path   = /data
  }
}
