module "view_module" {
  source = "./my_module"

  project_id = "<project_id>"
  dataset_id = "<dataset_id>"
  table_id = "<table_id>"
  view_id    = "my-view"
}