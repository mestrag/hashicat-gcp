module "network" {
  source  = "terraform-google-modules/network/google"
  version = "3.2.2"
  # insert the 3 required variables here
  network_name = "raghu-network"
  project_id = var.project
  subnets = [
  {
    subnet_name   = "raghu-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}