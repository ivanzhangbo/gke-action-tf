terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.50.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "random_string" "bucket_suffix" {
  length  = 8
  special = false
  upper   = false
}

resource "google_storage_bucket" "gcs_bucket" {
  name          = "${var.bucket_name}-bbbbbbbbbbaaa"
  location      = var.location
  force_destroy = true # Set to false for production environments

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}
