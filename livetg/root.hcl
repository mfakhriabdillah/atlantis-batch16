remote_state {
  backend = "gcs"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    project = "studidevsecops16"
    bucket = "tf-studidevsecops16"
    prefix = "tf-batch16-iac/${path_relative_to_include()}/terraform.tfstate"
  }
}