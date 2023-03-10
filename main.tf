provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = var.region
  zone        = var.zone

  #default_labels = {
  #  env        = var.environment
  #  area       = "data"
  #  creator    = "fdelabarra"
  #  maintainer = "fdelabarra"
  #  project    = "terraform-demo"
  #  deployment = "terraform"
  #  repository = "terraform-demo"
  #  region     = var.region
  #}
}

module "cloud_storage" {
  source       = "./modules/cloud_storage"
  env_initials = local.env_initials
  region       = var.region
}

module "compute_engine" {
  source       = "./modules/compute_engine"
  env_initials = local.env_initials
  region       = var.region
}


