data "cloudinit_config" "ansbile" {
  gzip = false
  base64_encode = false

  part {
    content_type = "text/cloud-config"
    content = file("cloud-init/ansible-conf.yaml")
    filename = "ansible-conf.yaml"
  }
}

data "template_file" "ansible" {
  template = file("./cloud-init/ansible-conf.yaml")
}