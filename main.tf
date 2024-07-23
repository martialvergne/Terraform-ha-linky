# Pulls the image
#resource "docker_image" "ha-linky" {
#  name = "ubuntu:latest"
#}

# Create a container
resource "docker_container" "ha-linky" {
  image   = docker_image.ha-linky.image_id
  name    = "HA-Linky"
  env {
    SUPERVISOR_TOKEN = 
    WS_URL           = ws://192.168.1.61:8123/api/websocket
  }
  volumes {
    host_path        = /home/martial/linky
    container_path   = /data
  }
}
