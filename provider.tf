terraform {
  required_version = ">= 1.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>3.68"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~>3.68"
    }
    template = {
      source  = "hashicorp/template"
      version = "~>2.2"
    }
    rediscloud = {
      source  = "RedisLabs/rediscloud"
      version = "0.2.7"
    }
  }
}
