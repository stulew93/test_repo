
variable "gcp_project" {}

module "example_dataset" {
  source = "./example_dataset"
  gcp_project = "${var.gcp_project}"
}
