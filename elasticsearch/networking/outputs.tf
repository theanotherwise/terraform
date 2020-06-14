output "subnetwork_master_name" {
  value = google_compute_subnetwork.master-node.name
}

output "address_master_address" {
  value = google_compute_address.master.*.address
}

output "subnetwork_voting_only_name" {
  value = google_compute_subnetwork.voting-only-node.name
}

output "address_voting_only_address" {
  value = google_compute_address.voting-only.*.address
}

output "subnetwork_ingest_name" {
  value = google_compute_subnetwork.ingest-node.name
}

output "address_ingest_address" {
  value = google_compute_address.ingest.*.address
}

output "subnetwork_data_name" {
  value = google_compute_subnetwork.data-node.name
}

output "address_data_address" {
  value = google_compute_address.data.*.address
}

output "subnetwork_ml_name" {
  value = google_compute_subnetwork.master-node.name
}

output "address_ml_address" {
  value = google_compute_address.ml.*.address
}

output "subnetwork_transform_name" {
  value = google_compute_subnetwork.transform-node.name
}

output "address_transform_address" {
  value = google_compute_address.transform.*.address
}

output "subnetwork_coordinating_name" {
  value = google_compute_subnetwork.coordinating-node.name
}

output "address_coordinating_address" {
  value = google_compute_address.coordinating.*.address
}

output "subnetwork_kibana_name" {
  value = google_compute_subnetwork.kibana.name
}

output "address_kibana_address" {
  value = google_compute_address.kibana.*.address
}

output "subnetwork_kibana_client_name" {
  value = google_compute_subnetwork.kibana-client.name
}

output "address_kibana_client_address" {
  value = google_compute_address.kibana-client.*.address
}

output "subnetwork_logstash_shipper_name" {
  value = google_compute_subnetwork.logstash-shipper-client.name
}

output "address_logstash_shipper_address" {
  value = google_compute_address.logstash-shipper-client.*.address
}
output "subnetwork_logstash_indexer_name" {
  value = google_compute_subnetwork.logstash-indexer-client.name
}

output "address_logstash_indexer_address" {
  value = google_compute_address.logstash-indexer-client.*.address
}

output "subnetwork_bastion_name" {
  value = google_compute_subnetwork.bastion.name
}

output "address_bastion_address" {
  value = google_compute_address.bastion.address
}
