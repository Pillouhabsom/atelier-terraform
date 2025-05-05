resource "google_storage_bucket" "my-bucket" {
  project = local.project_id
  name          = "test-bucket"
  location      = "EU"
}

# resource "google_storage_bucket" "my-bucket-2" {
#   for_each = local.buckets_variants
#
#   project = local.project_id
#   name          = "atelier-terraform-test-bucket-${each.key}"
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

# resource "google_storage_bucket" "bucket-to-be-imported" {
#   project = local.project_id
#   name          = "atelier-terraform-bucket-created-in-console"
#   location      = "EU"
# }

