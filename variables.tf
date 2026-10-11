variable "workers_kvs" {
  description = <<EOT
Map of workers_kvs, attributes below
Required:
    - account_id
    - key_name
    - namespace_id
    - value
Optional:
    - metadata
EOT

  type = map(object({
    account_id   = string
    key_name     = string
    namespace_id = string
    value        = string
    metadata     = optional(string)
  }))
}

