terraform {
  cloud {
    organization = "thihathura"

    workspaces {
      name = "demo-workspace"
    }
  }
}