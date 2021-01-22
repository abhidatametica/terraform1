#create a private ip #

resource "google_compute_global_address" "default" {
  name = "private_network1"
  project = var.project_name
  address_type = "INTERNAL"
  purpose = "VPC_PEERING"
  prefix_length = 16
  network = var.network_name
  ip_version = "IPV4"



}
#creating cloud sql instance
resource "google_sql_database_instance" "cloud_sql_instance1" {
    name = var.sql_instance_name
    region = var.region
    database_version = var.database_version
    
    settings {
      tier =var.sql_machine_type   #which machine type we want  eg postgrss or mysql
      disk_size = var.disk_size

      ip_configuration {
        ipv4_enabled = false
        private_network = var.network_name
             
       }


    }
  
}