resource "google_dns_record_set" "openshift-master-local" {
  name = "openshift-master-${count.index}.local."
  managed_zone = google_dns_managed_zone.private-local.name
  type = "A"
  ttl = 300
  count = var.openshift_master_count

  rrdatas = [
    "${element(var.openshift_master_internal_addresses, count.index)}"]

  depends_on = [
    google_dns_managed_zone.private-local]
}

resource "google_dns_record_set" "openshift-compute-local" {
  name = "openshift-compute-${count.index}.local."
  managed_zone = google_dns_managed_zone.private-local.name
  type = "A"
  ttl = 300
  count = var.openshift_compute_count

  rrdatas = [
    "${element(var.openshift_compute_internal_addresses, count.index)}"]

  depends_on = [
    google_dns_managed_zone.private-local]
}

resource "google_dns_record_set" "openshift-infra-local" {
  name = "openshift-infra-${count.index}.local."
  managed_zone = google_dns_managed_zone.private-local.name
  type = "A"
  ttl = 300
  count = var.openshift_infra_count

  rrdatas = [
    "${element(var.openshift_infra_internal_addresses, count.index)}"]

  depends_on = [
    google_dns_managed_zone.private-local]
}

resource "google_dns_record_set" "openshift-lb-local" {
  name = "openshift-lb-${count.index}.local."
  managed_zone = google_dns_managed_zone.private-local.name
  type = "A"
  ttl = 300
  count = var.openshift_lb_count

  rrdatas = [
    "${element(var.openshift_lb_internal_addresses, count.index)}"]

  depends_on = [
    google_dns_managed_zone.private-local]
}
