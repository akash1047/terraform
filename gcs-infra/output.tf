output "vpc_self_link" {
  description = "The self link of the VPC network"
  value       = google_compute_network.vpc_network.self_link
}

output "subnetwork_self_link" {
  description = "The self link of the VPC subnetwork"
  value       = google_compute_subnetwork.vpc_subnetwork.self_link
}

output "firewall_self_link" {
  description = "The self link of the firewall rule"
  value       = google_compute_firewall.allow_ssh_http.self_link
}

output "vm_instance_name" {
  description = "The name of the VM instance"
  value       = google_compute_instance.vm_instance.name
}

output "vm_instance_self_link" {
  description = "The self link of the VM instance"
  value       = google_compute_instance.vm_instance.self_link
}

output "vm_external_ip" {
  description = "The external IP address of the VM instance"
  value       = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}
