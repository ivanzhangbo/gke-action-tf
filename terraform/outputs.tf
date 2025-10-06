output "gcs_bucket_url" {
  description = "The URL of the created GCS bucket."
  value       = google_storage_bucket.gcs_bucket.url
}
