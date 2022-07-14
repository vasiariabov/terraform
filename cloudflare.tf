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




resource "cloudflare_record" "info" {
  zone_id = var.cloudflare_zone_id
  name    = "info"
  value   = "12.10.12.10"
  type    = "A"
  
}


resource "cloudflare_record" "log" {
  zone_id = var.cloudflare_zone_id
  name    = "log"
  value   = "10.10.113.10"
  type    = "A"
  
}
