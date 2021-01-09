terraform {
  required_version = ">= 0.12"

  required_providers {
    google = ">= 3.3"
  }
}
provider "google" {
  project = "camargue-0001"
}
resource "google_cloud_run_service" "my-service" {
  name     = "my-service"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "gcr.io/cloudrun/hello"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}