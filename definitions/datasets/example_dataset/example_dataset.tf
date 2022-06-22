module "example_dataset" {
    source = "../../../terraform_modules/dataset_template/"
    # Required fields
    dataset_id = "example_dataset"
    description = "An example dataset."
    # Optional labels map, this will add to the two default labels and can be left empty
    # Note: these must be lower case and contain _ instead of spaces
    labels = {}
    # Please leave all below variables alone and use the access.tf file to add access
    gcp_project = var.gcp_project
    reader_group_by_email = local.reader_group_by_email
    writer_user_by_email  = local.writer_user_by_email
    owner_user_by_email   = local.owner_user_by_email
    reader_user_by_email  = local.reader_user_by_email
    authorised_view       = local.authorised_view
}

variable "gcp_project" {}
