variable "project_name" {}

variable "region" {
    default = "us-central1"
}

variable "zone" {
    default = "us-central1-a"
}

variable "availability_type" {
    default = "ZONAL"
}

variable "composer_machine_type"{
 default = "n1-standard-1"
}

variable "network_name"{
    
}

variable "subnet" {}
