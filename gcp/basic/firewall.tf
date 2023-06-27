resource "google_compute_firewall" "allow_tcp_8080" {
  name    = "allow-tcp-8080"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["lab"]
}
