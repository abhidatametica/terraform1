
#create cloud composer
resource "google_composer_environment" "cloud_composer1" {
name = var.composer_name
project = var.project_name
region = var.region

config {
    node_count = 3

    node_config {
      zone = var.zone
      machine_type = var.composer_machine_type
      disk_size_gb ="100"
      network = var.network_name
      subnetwork =var.subnet
      service_account = var.service_account
      tags = var.network_tag
    }

    software_config {
      image_version = var.image
      python_version = "3"

    }
 }
}

