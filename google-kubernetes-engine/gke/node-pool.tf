resource "google_container_node_pool" "gke-pool" {
  name = "${var.gke_name}-pool"

  location = var.gke_location

  cluster = google_container_cluster.gke.name

  initial_node_count = 5

  autoscaling {
    min_node_count = 6
    max_node_count = 10
  }

  node_config {
    machine_type = var.gke_machine_type
    disk_type = "pd-ssd"
    disk_size_gb = 100

    tags = [
      "gke-node",
      "all"]

    service_account = google_service_account.service_account.email
  }

  management {
    auto_repair = true
    auto_upgrade = true
  }

  depends_on = [
    var.dependencies,
    google_container_cluster.gke,
    google_service_account.service_account]
}