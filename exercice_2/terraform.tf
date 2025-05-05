terraform {
  required_version = "1.5.7"

  backend "gcs" {
    bucket  = "<bucket-name>"
    prefix  = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.6.0"
    }
  }
}