variable "project_id" {
  description = "The Google Cloud project ID."
  type        = string
}

variable "region" {
  description = "The region for Google Cloud resources."
  type        = string
  default     = "us-central1"
}

variable "location" {
  description = "The location for the GCS bucket."
  type        = string
  default     = "US"
}

variable "bucket_name" {
  description = "The base name for the GCS bucket."
  type        = string
  default     = "my-tf-gcs-bucket"
}
