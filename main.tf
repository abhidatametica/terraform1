module "cloud_sql" {
    source = "./cloud_sql/"
    project_name = var.project_name
    sql_instance_name= "datametica-demo-sql-vm"
    disk_size = "10"
    sql_machine_type = "db-n1-standard-1"
    database_version = "MYSQL_5_7"
    region = var.region 
    zone = var.zone
    availability_type =var.availability_type
    


    
}