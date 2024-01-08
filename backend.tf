terraform {
  backend "gcs" {
    bucket  = "mojakorpa99test"
    prefix  = "terraform/state"
  }
}
