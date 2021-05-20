module "network" {
  source  = "terraform-google-modules/network/google"
  version = "2.5.0"
  # insert the 3 required variables here
  network_name = "raghu26-network"
  project_id = var.project
  subnets = [
  {
    subnet_name   = "raghu26-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}