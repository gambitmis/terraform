resource "google_compute_instance" "ansible" {
  name         = "ansible"
  machine_type = "e2-medium"
  zone         = var.zone

  tags = ["ansbile"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        role = "ansible"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    user-data = data.cloudinit_config.ansible.rendered
  }

  #metadata_startup_script = "echo hi > /test.txt"
}