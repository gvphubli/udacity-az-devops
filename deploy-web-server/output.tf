output "load_balancer_public_ip" {
  description = "Public IP of the Load Balancer"
  value       = azurerm_public_ip.lb_public_ip.ip_address
}

output "vm_names" {
  description = "Names of the deployed virtual machines"
  value       = [for vm in azurerm_linux_virtual_machine.vm : vm.name]
}

output "vm_private_ips" {
  description = "Private IPs of the VMs"
  value       = [for nic in azurerm_network_interface.nic : nic.ip_configuration[0].private_ip_address]
}
