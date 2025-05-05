# resource "google_pubsub_topic" "my-topic" {
#  name = "topic--${terraform.workspace}"
# }
#
# resource "google_pubsub_subscription" "example" {
#  count = terraform.workspace == "prod"? 1 : 0
#  for_each = toset(local.pubsub_subscribers)
#
#  name  = "${each.value}-subscription-${terraform.workspace}"
#  topic = google_pubsub_topic.my-topic.name
#
#  ack_deadline_seconds = 20
#
#  labels = {
#    foo = "bar"
#  }
# }