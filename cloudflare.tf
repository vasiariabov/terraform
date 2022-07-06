terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}


provider "cloudflare" {
  api_token = "tstnYaXKOLxR_fdEYpwJgupEvHgE-Rb0DRCFjA0I"
}



resource "cloudflare_record" "www" {
  zone_id = "var.cloudflare_zone_id"
  name    = "www"
  value   = "203.0.113.10"
  type    = "A"
  
}
