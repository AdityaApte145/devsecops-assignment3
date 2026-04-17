resource "google_compute_firewall" "allow_http_ssh" {
  name    = "allow-devsecops-ports"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22", "3000", "5000", "5601", "9200"]
  }

  source_ranges = ["0.0.0.0/0"]
}