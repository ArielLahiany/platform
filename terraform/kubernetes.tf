# todo: need to understand how to get GKE with Ansible, Terraform and
# Python with PIP pre-installed.
# todo: once with have the Django server up and running, we need to request for Docker build for the Storefront and the Dashboard
#       applications, with the new IP of the server.
#       maybe we can use hostAliases in the deployment.yaml file.

# Setting Google as the base provider.
//provider "google" {
//  credentials = var.credentials
//}

//# Setting Google as the base provider.
//resource "google_service_account" "default" {
//  account_id = ""
//  display_name = "Service Account"
//}

# Asking for a cluster, using the official Google Kubernetes Engine.
resource "google_container_cluster" "primary" {
  name                      = var.name
  project                   = var.project
  description               = var.description
  location                  = var.location
  remove_default_node_pool  = true
  initial_node_count        = var.initial_node_count
}

# Asking for a node pool, using the official Google Kubernetes Engine.
resource "google_container_node_pool" "primary_preemptible_nodes" {
  name        = var.name
  project     = var.project
  location    = var.location
  cluster     = google_container_cluster.primary.name
  node_count  = var.initial_node_count

  node_config {
    preemptible     = true
    machine_type    = var.machine_type
//    service_account = google_service_account.default.email
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
