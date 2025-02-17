module "rg_module" {
  source = "../modules/resourcegroup"
  rg     = var.rg
}

module "stg_module" {
  source     = "../modules/storage"
  stg        = var.stg
  depends_on = [module.rg_module]
}

module "network_module" {
  source     = "../modules/networking"
  nic        = var.nic
  subnet     = var.subnet
  vnet       = var.vnet
  depends_on = [module.rg_module]
}

#module "private_endpoint_module" {
  #source           = "../modules/privateendpoint"
  #private_endpoint = var.private_endpoint
  #private_dns      = var.private_dns
  #stg_data         = var.stg_data
  #service_id = var.service_id
  #subnet_ids = var.subnet_ids
  #depends_on = [ module.network_module ]
#}

