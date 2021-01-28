variable "project_name"{}
variable "composer_name"{}
variable "region"{}
variable "zone"{}
variable "subnet"{}
variable "service_account"{}
variable "network_name"{}
variable "composer_machine_type"{}
variable "network_tag"{}
variable "image"{
    default = "composer-1.14.0-airflow-1.10.12"
}

