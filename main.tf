# Pulls the image
resource "docker_image" "ha-linky" {
  name = "ha-linky"
}

# Create a container
resource "docker_container" "ha-linky" {
  image = docker_image.ha-linky.image_id
  name  = "HA-Linky"
  env   = ["SUPERVISOR_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiIxMWU2NWFiOWIwY2Y0YWM4ODcwMTUyNTc5MDFlNjQzNiIsImlhdCI6MTcyMTc1MDAyMywiZXhwIjoyMDM3MTEwMDIzfQ.hg-gqd1osdFOkyVlsNUWzjQ3nEc9TsnlHBD5lKy33iI","WS_URL=ws://192.168.1.61:8123/api/websocket"]
  volumes {
    host_path      = "/home/martial/linky"
    container_path = "/data"
  }
}

