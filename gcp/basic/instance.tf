resource "google_compute_instance" "ansible" {
  name         = "ansible"
  machine_type = "e2-medium"
  zone         = var.zone
  tags = ["ansbile"]

  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/ubuntu-2204-jammy-v20230616"
      labels = {
        role = "ansible"
      }
    }
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    startup-script = <<-EOF
      sudo apt update
      sudo apt upgrade -y
      sudo apt install software-properties-common -y
      sudo add-apt-repository --yes --update ppa:ansible/ansible
      sudo apt install ansible
    EOF
  }

  #metadata_startup_script = "echo hi > /test.txt"
}