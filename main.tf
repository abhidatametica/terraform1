provider "google" {
    project = "abhisheks-demo"
    credentials = "abhishek-key.json"
}
module "cloud_sql" {
    source = "./cloud_sql/"
    project_name = var.project_name
    network_name = var.network_name
    sql_instance_name= "datametica-demo-sql-vm"
    disk_size = "10"
    sql_machine_type = "db-n1-standard-1"
    database_version = "MYSQL_5_7"
    region = var.region
   # availability_type =var.availability_type




}



module "custom_role" {
    source = "./iam/custom_roles"
    project_name =var.project_name

}

module "cloud_composer" {
    source = "./cloud_composer/"
    project_name=var.project_name
    composer_name="composer-01"
    region = "us-central1"
    zone = "us-central1-a"
    network_name = var.network_name
    subnet =var.subnet
    service_account="98370415066-compute@developer.gserviceaccount.com"
    #image="composer-1.14.0-airflow-1.10.12"
    composer_machine_type =var.composer_machine_type
    #python = "3"
    network_tag=var.network_tag

}
