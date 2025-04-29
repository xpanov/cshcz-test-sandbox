terraform {
  required_version = ">= 0.13"
  backend "s3" {
    endpoint                    = "object-store.cloud.muni.cz"
    bucket                      = "tfstates"
    encrypt                     = true
    use_path_style              = true
    key                         = "main"
    region                      = "brno1"
    skip_credentials_validation = true
    skip_region_validation      = true
    workspace_key_prefix        = "main"
  }
  required_providers {
    crczp = {
      source = "cyberrangecz/crczp"
      version = "0.1.0"
    }
    # kypo = {
    #   source  = "vydrazde/kypo"
    # }
  }
}

variable "KYPO_ENDPOINT" {}
variable "CI_PROJECT_URL" {}
variable "CI_COMMIT_SHORT_SHA" {}

# provider "kypo" {
#   endpoint  = "https://images.crp.kypo.muni.cz"
# }


provider "crczp" {
  # endpoint  = "https://your.crczp.ex" # Or use CRCZP_ENDPOINT env var
  # client_id = "***"                  # Or use CRCZP_CLIENT_ID env var
  # username  = "user"                 # Or use CRCZP_USERNAME env var
  # password  = "***"                  # Or use CRCZP_PASSWORD env var
}

module "sandbox" {
  source        = "cyberrangecz/sandbox/crczp"
  # source        = "gitlab.ics.muni.cz/muni-kypo-images/sandbox-ci/kypo"
  project_url   = var.CI_PROJECT_URL
  rev           = var.CI_COMMIT_SHORT_SHA
  # kypo_endpoint = var.KYPO_ENDPOINT
  version = "0.1.0"
}

output "pool_url" {
  value = module.sandbox.sandbox_ids
  # value = module.sandbox.pool_url
}


# provider "openstack" {
#   auth_url    = "https://your-openstack-auth-url"
#   tenant_name = "your-tenant-name"
#   user_name   = "your-username"
#   password    = "your-password"
#   region      = "RegionOne"
# }

# resource "openstack_compute_instance_v2" "basic_instance" {
#   name            = "test-instance"
#   image_name      = "Ubuntu-22.04"
#   flavor_name     = "m1.small"
#   key_pair        = "my-keypair"
#   security_groups = ["default"]

#   network {
#     name = "private-network"
#   }
# }

# output "instance_ip" {
#   value = openstack_compute_instance_v2.basic_instance.access_ip_v4
# }


