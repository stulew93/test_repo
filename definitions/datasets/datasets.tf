/* A file to enable datasets and pass gcp_project to them
please make sure the datasets are enabled passing the gcp_project variable as:

module "u_denis_zaboronsky" {
  source = "./u_denis_zaboronsky/"
  gcp_project = "${var.gcp_project}"
}
*/

# Define default projects. These do not contain access files as they use the access defaults, although these can be added if required
module "supernova" {
  source = "./supernova/"
  gcp_project = "${var.gcp_project}"
}
module "supernova_assertions" {
  source = "./supernova_assertions/"
  gcp_project = "${var.gcp_project}"
}

# User areas modules. Create on an as required basis in OEA



# Landing layer modules






# Raw layer modules





# Topic layer modules





# Required dataset variables. These are empty as descriptions are provided at root. Please do not change unless you are confident you understand
#what you are doing

variable "gcp_project" {}
