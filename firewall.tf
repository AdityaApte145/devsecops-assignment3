resource "google_compute_firewall" "allow_all_devsecops" {
  name    = "allow-devsecops-all"
  network = google_compute_network.vpc.id

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "4000", "5601", "9200"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["devsecops"]
}
