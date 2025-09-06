output "vm_ip" {
  description = "IP pública de la VM"
  value       = azurerm_linux_virtual_machine.vm.public_ip_address
}
