output "workers_kvs_id" {
  description = "Map of id values across all workers_kvs, keyed the same as var.workers_kvs except keys with no id are omitted"
  value       = { for k, v in cloudflare_workers_kv.workers_kvs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workers_kvs_account_id" {
  description = "Map of account_id values across all workers_kvs, keyed the same as var.workers_kvs except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_workers_kv.workers_kvs : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "workers_kvs_key_name" {
  description = "Map of key_name values across all workers_kvs, keyed the same as var.workers_kvs except keys with no key_name are omitted"
  value       = { for k, v in cloudflare_workers_kv.workers_kvs : k => v.key_name if v.key_name != null && length(v.key_name) > 0 }
}
output "workers_kvs_metadata" {
  description = "Map of metadata values across all workers_kvs, keyed the same as var.workers_kvs except keys with no metadata are omitted"
  value       = { for k, v in cloudflare_workers_kv.workers_kvs : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "workers_kvs_namespace_id" {
  description = "Map of namespace_id values across all workers_kvs, keyed the same as var.workers_kvs except keys with no namespace_id are omitted"
  value       = { for k, v in cloudflare_workers_kv.workers_kvs : k => v.namespace_id if v.namespace_id != null && length(v.namespace_id) > 0 }
}
output "workers_kvs_value" {
  description = "Map of value values across all workers_kvs, keyed the same as var.workers_kvs except keys with no value are omitted"
  value       = { for k, v in cloudflare_workers_kv.workers_kvs : k => v.value if v.value != null && length(v.value) > 0 }
}

