resource "google_dns_record_set" "openshift-master-linuxpolska-localdomain" {
  name = "openshift-master-${count.index}.linuxpolska.localdomain."
  managed_zone = google_dns_managed_zone.private-linuxpolska-localdomain.name
  type = "A"
  ttl = 300
  count = var.openshift_master_count

  rrdatas = [
    "${element(var.openshift_master_internal_addresses, count.index)}"]

  depends_on = [
    google_dns_managed_zone.private-linuxpolska-localdomain]
}

resource "google_dns_record_set" "openshift-compute-linuxpolska-localdomain" {
  name = "openshift-compute-${count.index}.linuxpolska.localdomain."
  managed_zone = google_dns_managed_zone.private-linuxpolska-localdomain.name
  type = "A"
  ttl = 300
  count = var.openshift_compute_count

  rrdatas = [
    "${element(var.openshift_compute_internal_addresses, count.index)}"]

  depends_on = [
    google_dns_managed_zone.private-linuxpolska-localdomain]
}

resource "google_dns_record_set" "openshift-infra-linuxpolska-localdomain" {
  name = "openshift-infra-${count.index}.linuxpolska.localdomain."
  managed_zone = google_dns_managed_zone.private-linuxpolska-localdomain.name
  type = "A"
  ttl = 300
  count = var.openshift_infra_count

  rrdatas = [
    "${element(var.openshift_infra_internal_addresses, count.index)}"]

  depends_on = [
    google_dns_managed_zone.private-linuxpolska-localdomain]
}