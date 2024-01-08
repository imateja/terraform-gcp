terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)

  project = var.project
  region  = var.region
  zone    = var.zone
}

module "network" {
  source = "./modules/network"
}

module "compute" {
  source            = "./modules/compute"
  network_self_link = module.network.network_self_link
}