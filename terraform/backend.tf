terraform {
  cloud {
    organization = "lbasg-lab"

    workspaces {
      name = "azure-landing-zone"
    }
  }
}