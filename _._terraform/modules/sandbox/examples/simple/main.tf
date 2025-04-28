terraform {
  required_providers {
    kypo = {
      source  = "vydrazde/kypo"
      version = ">= 0.1.0"
    }
  }
}

locals {
  endpoint = "https://your.kypo.ex"
}

provider "kypo" {
  endpoint  = local.endpoint
  client_id = "xxx"
}

module "sandbox" {
  source        = "gitlab.ics.muni.cz/muni-kypo-images/sandbox-ci/kypo"
  project_url   = "https://gitlab.ics.muni.cz/muni-kypo-trainings/games/junior-hacker.git"
  rev           = "master"
  kypo_endpoint = local.endpoint
}
