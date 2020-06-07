provider "google" {
  credentials = "katana-sh-ee20a1608e98.json"
  project     = "molten-infusion-277321"
  region      = var.region
  zone        = var.zone
}