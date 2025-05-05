resource "google_bigquery_table" "my-view" {

  project    = var.project_id
  dataset_id = var.dataset_id
  table_id   = var.view_id

  view {
    query = "SELECT * FROM `${var.project_id}.${var.dataset_id}.${var.table_id}` LIMIT 1000"
    use_legacy_sql = false
  }

  #deletion_protection=false
}