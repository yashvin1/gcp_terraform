terraform {
    required_version = "~> 1.0.0"
    backend "gcs" {
      bucket = "jlr-dl-dev-terraform"
    }    
    required_providers {
      gcp={
        source = "hashicorp/google"
        version = "4.32.0"
      }
      template={
        source = "hashicorp/template"
        version = "2.2.0"
      }
      google-beta={
        source = "hashicorp/google-beta"
        version = "~> 3.78.0"
      }
    }
}

provider "gcp" {  
    project = var.project
    region = var.region
    alias = "DEV-ENV"
}
provider "google-beta" {  
    project = var.project
    region = var.region
    
}
provider "template" {
  
}