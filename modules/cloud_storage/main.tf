
resource "google_storage_bucket" "gcs_buckets" {
  for_each                 = local.buckets
  name                     = each.key
  location                 = lookup(each.value, "location", local.default_values.location)
  force_destroy            = lookup(each.value, "force_destroy", local.default_values.force_destroy)
  public_access_prevention = lookup(each.value, "public_access_prevention", local.default_values.public_access_prevention)
  labels                   = lookup(each.value, "labels", {})
}

