variable "name" {
  description = ""
  type        = string
  default     = "saleor"
}

variable "credentials" {
  description = ""
  type        = string
  default     = "/home/arik/.config/gcloud/application_default_credentials.json"
}

variable "project" {
  description = "The project ID where all resources will be launched."
  type        = string
  default     = "saleor-317718"
}

variable "description" {
  description = ""
  type        = string
  default     = "Saleor Kubernetes Platform."
}

variable "location" {
  description = "The location (region or zone) of the GKE cluster."
  type        = string
  default     = "us-central1"
}

variable "initial_node_count" {
  description = ""
  type        = number
  default     = 1
}

variable "machine_type" {
  description = ""
  type        = string
  default     = "e2-medium"
}
