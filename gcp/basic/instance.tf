resource "google_compute_instance" "ansible" {
  name         = "ansible"
  machine_type = "e2-medium"
  zone         = var.zone
  tags = ["lab"]

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

  metadata_startup_script = <<-EOT
    #!/bin/bash
    sudo apt update
    sudo apt upgrade -y
    sudo apt install software-properties-common -y
    sudo add-apt-repository --yes --update ppa:ansible/ansible
    sudo apt install ansible neofetch -y
    sudo neofetch > /etc/motd
  EOT

  metadata = {
    ssh-keys = "tuxtum:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDI8WhuoXVaRXQC0fbIqpY18b8bBPChNhZNRJH1g+OMZKpcNaQOlDebg7Fj4atGcpCIWa0ccmEa1fP+CSUZUBmdriCSPVgKIokztW7fkdD2tqECsdAeXX87j1lngyAA6Yipi/xpV8lFLMTjNYsE1bWGMCoTeMZ80VP/eHY1CejheZVyuwQabfG2lA1BA7OuIAaOXKtBbbChVMy2v/3YbpfFAaorPWy6Fw2Sy1lEy59rVbY35urra3QbkN+H39P9C39FeS7KwCBS2D1aqPtCbMGks14z+pUsFtRbe2DsANjeNTKb7viDlwhwyA9qmAT8iwSThpvx0BQL7lRrkB55ETUKBtN2Dw11zSe/+M3PceDghUcRJBtEcFZufe+KPef0WC0nhT4lFa5sbE2ahUmkGim8pwf9Exnyw+y7tfpFa9OUSoxW3oWhy60kmk2rGgH7pbTfxEdr7fC83Wh0XUVV/ANsUA13d4H7GrWf3NOlKdWIQzhiwmVmyPOZUCv8xXhQNGh/kKDIvx5cZn2KphM4eaTEJSuHo3vKN9oiWOUq8IEOL6NAR2jwB0Czos+kmfCNkmyNO6AiAcB+QrWwihq2lOCMORqDW8yP3aj7c8GDG3ou7YifWVQTIxVCGYCHUXuneQdv+p7hemWp2tFJOaTv+4qwfajuRhPlZwO86F3qdb8Mdw== tuxtum"
  }

}

resource "google_compute_instance" "lab1" {
  name         = "lab1"
  machine_type = "e2-medium"
  zone         = var.zone
  tags = ["lab"]

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

  metadata_startup_script = <<-EOT
    #!/bin/bash
    sudo apt update
    sudo apt upgrade -y
    sudo apt install ansible neofetch -y
    sudo neofetch > /etc/motd
  EOT

  metadata = {
    ssh-keys = "tuxtum:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDI8WhuoXVaRXQC0fbIqpY18b8bBPChNhZNRJH1g+OMZKpcNaQOlDebg7Fj4atGcpCIWa0ccmEa1fP+CSUZUBmdriCSPVgKIokztW7fkdD2tqECsdAeXX87j1lngyAA6Yipi/xpV8lFLMTjNYsE1bWGMCoTeMZ80VP/eHY1CejheZVyuwQabfG2lA1BA7OuIAaOXKtBbbChVMy2v/3YbpfFAaorPWy6Fw2Sy1lEy59rVbY35urra3QbkN+H39P9C39FeS7KwCBS2D1aqPtCbMGks14z+pUsFtRbe2DsANjeNTKb7viDlwhwyA9qmAT8iwSThpvx0BQL7lRrkB55ETUKBtN2Dw11zSe/+M3PceDghUcRJBtEcFZufe+KPef0WC0nhT4lFa5sbE2ahUmkGim8pwf9Exnyw+y7tfpFa9OUSoxW3oWhy60kmk2rGgH7pbTfxEdr7fC83Wh0XUVV/ANsUA13d4H7GrWf3NOlKdWIQzhiwmVmyPOZUCv8xXhQNGh/kKDIvx5cZn2KphM4eaTEJSuHo3vKN9oiWOUq8IEOL6NAR2jwB0Czos+kmfCNkmyNO6AiAcB+QrWwihq2lOCMORqDW8yP3aj7c8GDG3ou7YifWVQTIxVCGYCHUXuneQdv+p7hemWp2tFJOaTv+4qwfajuRhPlZwO86F3qdb8Mdw== tuxtum"
  }

}


resource "google_compute_instance" "lab2" {
  name         = "lab2"
  machine_type = "e2-medium"
  zone         = var.zone
  tags = ["lab"]

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

  metadata_startup_script = <<-EOT
    #!/bin/bash
    sudo apt update
    sudo apt upgrade -y
    sudo apt install ansible neofetch -y
    sudo neofetch > /etc/motd
  EOT

  metadata = {
    ssh-keys = "tuxtum:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDI8WhuoXVaRXQC0fbIqpY18b8bBPChNhZNRJH1g+OMZKpcNaQOlDebg7Fj4atGcpCIWa0ccmEa1fP+CSUZUBmdriCSPVgKIokztW7fkdD2tqECsdAeXX87j1lngyAA6Yipi/xpV8lFLMTjNYsE1bWGMCoTeMZ80VP/eHY1CejheZVyuwQabfG2lA1BA7OuIAaOXKtBbbChVMy2v/3YbpfFAaorPWy6Fw2Sy1lEy59rVbY35urra3QbkN+H39P9C39FeS7KwCBS2D1aqPtCbMGks14z+pUsFtRbe2DsANjeNTKb7viDlwhwyA9qmAT8iwSThpvx0BQL7lRrkB55ETUKBtN2Dw11zSe/+M3PceDghUcRJBtEcFZufe+KPef0WC0nhT4lFa5sbE2ahUmkGim8pwf9Exnyw+y7tfpFa9OUSoxW3oWhy60kmk2rGgH7pbTfxEdr7fC83Wh0XUVV/ANsUA13d4H7GrWf3NOlKdWIQzhiwmVmyPOZUCv8xXhQNGh/kKDIvx5cZn2KphM4eaTEJSuHo3vKN9oiWOUq8IEOL6NAR2jwB0Czos+kmfCNkmyNO6AiAcB+QrWwihq2lOCMORqDW8yP3aj7c8GDG3ou7YifWVQTIxVCGYCHUXuneQdv+p7hemWp2tFJOaTv+4qwfajuRhPlZwO86F3qdb8Mdw== tuxtum"
  }

}

resource "google_compute_instance" "lab3" {
  name         = "lab3"
  machine_type = "e2-medium"
  zone         = var.zone
  tags = ["lab"]

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

  metadata_startup_script = <<-EOT
    #!/bin/bash
    sudo apt update
    sudo apt upgrade -y
    sudo apt install ansible neofetch -y
    sudo neofetch > /etc/motd
  EOT

  metadata = {
    ssh-keys = "tuxtum:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDI8WhuoXVaRXQC0fbIqpY18b8bBPChNhZNRJH1g+OMZKpcNaQOlDebg7Fj4atGcpCIWa0ccmEa1fP+CSUZUBmdriCSPVgKIokztW7fkdD2tqECsdAeXX87j1lngyAA6Yipi/xpV8lFLMTjNYsE1bWGMCoTeMZ80VP/eHY1CejheZVyuwQabfG2lA1BA7OuIAaOXKtBbbChVMy2v/3YbpfFAaorPWy6Fw2Sy1lEy59rVbY35urra3QbkN+H39P9C39FeS7KwCBS2D1aqPtCbMGks14z+pUsFtRbe2DsANjeNTKb7viDlwhwyA9qmAT8iwSThpvx0BQL7lRrkB55ETUKBtN2Dw11zSe/+M3PceDghUcRJBtEcFZufe+KPef0WC0nhT4lFa5sbE2ahUmkGim8pwf9Exnyw+y7tfpFa9OUSoxW3oWhy60kmk2rGgH7pbTfxEdr7fC83Wh0XUVV/ANsUA13d4H7GrWf3NOlKdWIQzhiwmVmyPOZUCv8xXhQNGh/kKDIvx5cZn2KphM4eaTEJSuHo3vKN9oiWOUq8IEOL6NAR2jwB0Czos+kmfCNkmyNO6AiAcB+QrWwihq2lOCMORqDW8yP3aj7c8GDG3ou7YifWVQTIxVCGYCHUXuneQdv+p7hemWp2tFJOaTv+4qwfajuRhPlZwO86F3qdb8Mdw== tuxtum"
  }

}