variable "environment" {
  type        = string
  description = "The project environment, dev, stg, prod..."
}

variable "region" {
  type        = string
  description = "The gcp region"
}

variable "project_id" {
  type        = string
  description = "CGP Project Id"
}

variable "credentials_file" {
  type        = string
  description = "Credentials file name"
}