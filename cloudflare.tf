terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}


provider "cloudflare" {
  api_token = var.cloudflare_api_token
  
}




resource "cloudflare_record" "www" {
  zone_id = "72217ecd07884307a08420b709cdd4d6"
  name    = "www"
  value   = "203.10.113.10"
  type    = "A"
  
}


resource "cloudflare_record" "joka" {
  zone_id = "72217ecd07884307a08420b709cdd4d6"
  name    = "joka"
  value   = "10.10.113.10"
  type    = "A"
  
}
