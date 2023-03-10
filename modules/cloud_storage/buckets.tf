locals {

  default_values = {
    location      = "US"
    force_destroy = true
    public_access_prevention = "enforced"
  }

  buckets = {
    "terraform-demo-bucket-1-${var.env_initials}" = {}

    "terraform-demo-bucket-2-${var.env_initials}" = {
      labels = {
        creator    = "juanito"
        maintainer = "pepito"
        deployment = "terraform"
        region     = var.region
      }
    }
  }
}

