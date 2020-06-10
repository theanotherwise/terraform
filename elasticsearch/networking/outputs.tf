output "subnetwork_master_name" {
  value = google_compute_subnetwork.master.name
}

output "subnetwork_voting_only_name" {
  value = google_compute_subnetwork.voting-only.name
}

output "subnetwork_ingest_name" {
  value = google_compute_subnetwork.ingest.name
}

output "subnetwork_data_name" {
  value = google_compute_subnetwork.data.name
}

output "subnetwork_ml_name" {
  value = google_compute_subnetwork.ml.name
}