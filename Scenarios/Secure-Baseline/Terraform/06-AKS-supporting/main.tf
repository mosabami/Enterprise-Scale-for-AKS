########
# DATA #
########

# Data From Existing Infrastructure

data "terraform_remote_state" "existing-lz" {
  backend = "azurerm"

  config = {
    storage_account_name = var.state_sa_name
    container_name       = var.container_name
    key                  = "lz-net"
    access_key = "JCl/6j8F390qcCUcLy+cG/QStbm+2fbuXu89MErlJOeTAeXqPS/Zi7nuCsLkHMVzN3cmJlU10xUKrQ/UkvTLjg=="
  }
}

data "azurerm_client_config" "current" {}


output "key_vault_id" {
  value = module.create_kv.kv_id
}

output "container_registry_id" {
  value = module.create_acr.acr_id
}











