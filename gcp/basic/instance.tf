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
    startup-script = "#!/bin/bash\necho \"start update\" > /tmp/step\nsudo apt update\nsudo apt upgrade -y\necho \"done update\" >> /tmp/step\necho \"start install ansible\" >> /tmp/step\nsudo apt install software-properties-common -y\nsudo add-apt-repository --yes --update ppa:ansible/ansible\necho \"done install ansible\" >> /tmp/step\necho \"start change motd\" >> /tmp/step\nsudo apt install ansible neofetch -y\nsudo neofetch > /etc/motd\necho \"done change motd\" >> /tmp/step\necho \"start code-server\" >> /tmp/step\ncurl -fsSL https://code-server.dev/install.sh | sh\necho \"done code-server\" >> /tmp/step\n"
  }

}

resource "google_compute_instance" "my_instance" {
  name         = "my-instance"
  machine_type = "n1-standard-1"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/ubuntu-2204-jammy-v20230616"
      labels = {
        role = "aaa"
      }
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata_startup_script = <<-EOT
    #!/bin/bash
    sudo apt update
    sudo apt upgrade -y
    sudo apt install software-properties-common -y
    sudo add-apt-repository --yes --update ppa:ansible/ansible
    sudo apt install ansible neofetch -y
    sudo neofetch > /etc/motd
    curl -fsSL https://code-server.dev/install.sh | sh
    sudo systemctl enable --now code-server@$USER
    sudo sed -i s/127.0.0.1/0.0.0.0/g .config/code-server/config.yaml
    sudo systemctl restart code-server@$USER
  EOT
}
