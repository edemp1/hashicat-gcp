module "network" {
  source     = "app.terraform.io/EKRYDA-training/network/google"
  version    = "3.3.0"
  project_id = var.project
  # insert required variables here

  subnets = [
    {
      subnet_name   = "ed-subnet"
      subnet_ip     = "10.100.10.0/24"
      subnet_region = var.region
    }
  ]
}
