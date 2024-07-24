variable "token" {
  description  = "Token généré via Conso API : https://conso.boris.sh/"
  default      = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiIxMWU2NWFiOWIwY2Y0YWM4ODcwMTUyNTc5MDFlNjQzNiIsImlhdCI6MTcyMTc1MDAyMywiZXhwIjoyMDM3MTEwMDIzfQ.hg-gqd1osdFOkyVlsNUWzjQ3nEc9TsnlHBD5lKy33iI"
}

variable "ws_url" {
  description  = "Adresse IP de l'hôte Home assistant"
  default      = "192.168.1.61:8123"
}
