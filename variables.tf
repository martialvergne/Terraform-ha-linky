variable "token" {
  description  = "Token généré sur Home-Assistant"
  default      = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiIwYTJmMTMyMjg5MGE0M2IxOTVjZjMxYmE5N2ZiOTU3NSIsImlhdCI6MTcyMTgxNTY3NSwiZXhwIjoyMDM3MTc1Njc1fQ.0e_PeaWyaxrZL2xZrsEODiwrcKGQQq2RTvTSpM-HBiY"
}

variable "ws_url" {
  description  = "Adresse IP de l'hôte Home assistant"
  default      = "192.168.1.61:8123"
}
