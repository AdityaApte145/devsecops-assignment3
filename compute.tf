resource "google_compute_instance" "vm" {
  name         = var.vm_name
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/ubuntu-2510-questing-amd64-v20260320"
      size  = 20
    }
  }

  network_interface {
    network = google_compute_network.vpc.name

    access_config {
      // gives public IP
    }
  }

  metadata_startup_script = file("${path.module}/startup-script.sh")

  tags = ["devsecops"]
}