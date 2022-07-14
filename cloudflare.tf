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




resource "cloudflare_record" "test" {
  zone_id = var.cloudflare_zone_id
  name    = "www"
  value   = "203.10.113.10"
  type    = "A"
  
}


resource "cloudflare_record" "jokatest" {
  zone_id = var.cloudflare_zone_id
  name    = "joka"
  value   = "10.10.113.10"
  type    = "A"
  
}
