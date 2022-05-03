terraform {

  cloud {
    organization = "your-organization"

    workspaces {
      name = "tfc-das-tutorial"
    }
  }
}
