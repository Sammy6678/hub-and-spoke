env = "dev"

sub_id = "6f6bd52c-44e1-405f-a97b-2cd639f80d31"

rg = {
  rg1 = {
    name     = "rg-dev-69"
    location = "eastus"
    tags = {
      environment = "dev"
    }
  }

  rg2 = {
    name     = "backend-rg"
    location = "eastus"
  }
}

stg = {

  stg1 = {
    name                     = "stgdev69"
    location                 = "eastus"
    resource_group_name      = "rg-dev-69"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    tags = {
      environment = "dev"
    }
  }

  stg2 = {
    name                     = "backendstore26"
    location                 = "eastus"
    resource_group_name      = "backend-rg"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnet = {

  hubvnet = {
    name                = "hub-vent-dev-69"
    location            = "eastus"
    resource_group_name = "rg-dev-69"
    address_space       = ["10.0.0.0/16"]
    tags = {
      environment = "env"
    }
  }
}

subnet = {
  hubsubnet = {
    name                 = "hub-subnet-69"
    resource_group_name  = "rg-dev-69"
    virtual_network_name = "hub-vent-dev"
    address_prefixes     = ["10.0.0.0/24"]
  }
}

nic = {
  nic1 = {
    name                = "nic-dev-69"
    location            = "eastus"
    resource_group_name = "rg-dev-69"

    ip_configuration = {
      name                          = "devipnp"
      subnet_name                   = "hubsubnet"
      private_ip_address_allocation = "Dynamic"
    }
  }
}

#private_endpoint = {
 # stroagepv = {
    #name                = "storage-pv"
   # location            = "eastus"
  #  resource_group_name = "rg-dev-69"
   # subnet_name         = "hub-subnet-69"

  #  private_service_connection = {
   #   name             = "storagepv"
   #   subresource_name = ["blob"]

   # }
  #}
#}

#stg_data = {

 # stgid1 = {
   # name                = "stgdev69"
   # resource_group_name = "rg-dev-69"
 ## }
#}
#private_dns = {
 # dns_zone1 = {
  #  dns_zone_name          = "storage-dns"
  #  resource_group_name    = "rg-dev-69"
  ##}
#}
