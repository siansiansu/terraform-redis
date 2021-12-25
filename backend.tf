terraform {
  backend "gcs" {
    bucket = "redis-tfstate"
    prefix = "redis"
  }
}
