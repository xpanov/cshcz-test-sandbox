terraform {
  required_providers {
    kypo = {
      source  = "vydrazde/kypo"
      version = ">= 0.1.0"
    }
  }
}

locals {
  pool_url = "${var.kypo_endpoint}/pool/${module.sandbox.pool_id}"
}

module "sandbox" {
  source  = "vydrazde/sandbox/kypo"
  version = ">= 0.2.0"

  project_url = var.project_url
  rev         = var.rev
}

resource "local_file" "pool_url" {
  filename = "vars.env"
  content  = "POOL_URL=${local.pool_url}"
}
