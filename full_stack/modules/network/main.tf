resource "google_compute_network" "default" {
  name = var.network_name
  auto_create_subnetworks = "false"
  project = var.project

}

resource "google_compute_subnetwork" "default" {
    name = "${var.network_name}-subnets-dev"
    ip_cidr_range = var.ipv4_range
    network = google_compute_network.default.self_link
    region = var.region
    project = var.project
    
  
}