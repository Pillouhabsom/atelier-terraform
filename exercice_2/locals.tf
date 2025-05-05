locals {
  project_id  = "<project-id>"
  buckets_variants = {
    monthly: 30
    yearly: 365
  }
  pubsub_subscribers = [ "subscriber_1", "subscriber_2"]
}