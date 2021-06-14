# todo: need to understand how to get GKE with Ansible, Terraform and
# Python with PIP pre-installed.

# Setting Google as the base provider.
resource "google_service_account" "default" {
  account_id = ""
  display_name = ""
}

# Asking for a cluster, using the official Google Kubernetes Engine.
resource "google_container_cluster" "primary" {
  name = ""
  location = ""
  remove_default_node_pool = true
  initial_node_count = 1
}
