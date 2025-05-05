resource "google_storage_bucket" "my-bucket" {
  project = local.project_id
  name          = "${local.project_id}-test-bucket"
  location      = "EU"
}

# resource "google_storage_bucket" "my-bucket-2" {
#   for_each = local.buckets_variants
#
#   project = local.project_id
#   name          = "${local.project_id}-test-bucket-${each.key}"
#
#   lifecycle_rule {
#     action {
#       type = "Delete"
#     }
#     condition {
#       age = each.value
#     }
#   }
#   location      = "EU"
# }
