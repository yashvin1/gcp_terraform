terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.32.0"
    }
  }
}

provider "google" {
    project = "gcp-terraform-360013"
    region = "asia-south1"
    zone = "asia-south1-a" 
          
}