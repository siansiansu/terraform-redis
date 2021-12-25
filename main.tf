resource "rediscloud_subscription" "redis" {
  name                          = "redis"
  persistent_storage_encryption = var.persistent_storage_encryption

  cloud_provider {
    provider = var.cloud_provider
    region {
      region                       = var.region
      networking_deployment_cidr   = ""
      preferred_availability_zones = []
    }
  }

  database {
    name                         = "redis-cache"
    protocol                     = var.protocol
    memory_limit_in_gb           = 1
    data_persistence             = "snapshot-every-6-hours"
    throughput_measurement_by    = "operations-per-second"
    throughput_measurement_value = 10000
    periodic_backup_path         = ""
    replication                  = true
    support_oss_cluster_api      = false
    client_ssl_certificate       = ""
    average_item_size_in_bytes   = 0
    password                     = data.rediscloud_database.redis-cache.password

    alert {
      name  = "dataset-size"
      value = 80
    }
  }

  database {
    name                         = "redis-persist"
    protocol                     = var.protocol
    memory_limit_in_gb           = 1
    data_persistence             = "snapshot-every-6-hours"
    throughput_measurement_by    = "operations-per-second"
    throughput_measurement_value = 10000
    periodic_backup_path         = ""
    replication                  = true
    support_oss_cluster_api      = false
    client_ssl_certificate       = ""
    average_item_size_in_bytes   = 0
    password                     = data.rediscloud_database.redis-persist.password

    alert {
      name  = "dataset-size"
      value = 80
    }
  }
}
