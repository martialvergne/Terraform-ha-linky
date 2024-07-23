# Pulls the image
resource "docker_image" "ha-linky" {
  name = "ha-linky"
}

# Create a container
resource "docker_container" "ha-linky" {
  image = docker_image.ha-linky.image_id
  name  = "HA-Linky"
  env   =["SUPERVISOR_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiIxMWU2NWFiOWIwY2Y0YWM4ODcwMTUyNTc5MDFlNjQzNiIsImlhdC>
  volumes {
    host_path      = "/home/martial/linky"
    container_path = "/data"
  }
}

