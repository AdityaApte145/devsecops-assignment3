resource "google_compute_network" "vpc" {
  name                    = "devsecops-vpc"
  auto_create_subnetworks = true
}