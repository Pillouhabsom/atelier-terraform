terraform {
  required_version = "1.5.7"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.6.0"
    }
  }

  backend "gcs" {
    bucket  = "<bucket-name>"
    prefix  = "terraform/state"
  }
}