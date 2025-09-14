# The configuration for the `remote` backend.
terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "Yaniv-Practice"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "example-workspace"
    }
  }
}


resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
