variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP Zone"
  type        = string
  default     = "us-central1-c"
}

variable "vpc_network_name" {
  description = "Name of the VPC network"
  type        = string
  default     = "terraform-vpc"
}

variable "vpc_subnetwork_name" {
  description = "Name of the VPC subnetwork"
  type        = string
  default     = "terraform-subnet"
}

variable "vpc_subnetwork_cidr" {
  description = "CIDR block for the VPC subnetwork"
  type        = string
  default     = "10.0.0.0/24"
}

variable "allowed_ip_ranges" {
  description = "List of allowed IP ranges for firewall rules"
  type        = list(string)
  default     = []
}

variable "vm_instance_name" {
  description = "Name of the VM instance"
  type        = string
  default     = "terraform-vm"
}

variable "vm_machine_type" {
  description = "Machine type for the VM instance"
  type        = string
  default     = "e2-micro"
}

variable "vm_image" {
  description = "Image for the VM instance"
  type        = string
  default     = "debian-cloud/debian-12"
}

variable "tags" {
  description = "Network tags for the VM instance"
  type        = list(string)
  default     = ["http-server", "https-server", "ssh-server", "web-server"]
}
