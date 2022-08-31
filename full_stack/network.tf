module "network" {
    source = "../full_stack/modules/network"
    network_name=var.network_name
    ipv4_range=var.ipv4_range
    region=var.region
    project = var.project
}

