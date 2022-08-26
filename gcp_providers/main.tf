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

resource "google_storage_bucket" "my_bucket" {
  name = "bucket-from-tf-7896"
  location = "asia"
}