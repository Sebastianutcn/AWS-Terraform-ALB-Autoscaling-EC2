terraform {
  backend "remote" {
    organization = "sebastianbabiciu-org"

    workspaces {
      name = "workspace-sebastianbabiciu"
    }
  }
}