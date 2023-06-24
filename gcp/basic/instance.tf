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
    startup-script = "#!/bin/bash\nsudo apt update\nsudo apt upgrade -y\nsudo apt install software-properties-common -y\nsudo add-apt-repository --yes --update ppa:ansible/ansible\nsudo apt install ansible -y\nsudo apt install neofetch -y\nsudo apt install linuxlogo -y"
  }

}