data "rediscloud_database" "redis-cache" {
  subscription_id = "1234567"
  name            = "redis-cache"
}

data "rediscloud_database" "redis-persist" {
  subscription_id = "7654321"
  name            = "redis-persist"
}
