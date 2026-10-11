resource "cloudflare_workers_kv" "workers_kvs" {
  for_each = var.workers_kvs

  account_id   = each.value.account_id
  key_name     = each.value.key_name
  namespace_id = each.value.namespace_id
  value        = each.value.value
  metadata     = each.value.metadata
}

