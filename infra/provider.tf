terraform {
  required_providers {
    vercel = {
      source = "vercel/vercel"
    }
  }
}

variable "vercel_api_token" {}

provider "vercel" {
  api_token = var.vercel_api_token
}
