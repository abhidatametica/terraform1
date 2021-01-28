resource "google_project_iam_custom_role" "custom_role_01" {

    role_id = "Custom_Role_Cr"
    project = var.project_name
    title = "Custom_role01"  
    description = "value"
    permissions = [ "bigquery.jobs.list","bigquery.jobs.listAll","iam.roles.list" ]
       

}
