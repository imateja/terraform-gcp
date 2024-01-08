terraform {
  backend "gcs" {
    bucket  = var.bucketname
    prefix  = "terraform/state"
  }
}
