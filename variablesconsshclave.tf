variable "subscription_id" {
  description = "ID de tu suscripción de Azure"
  type        = string
}

variable "location" {
  description = "Región de Azure donde se crean los recursos"
  type        = string
  default     = "East US"
}

variable "admin_username" {
  description = "Usuario administrador de la VM"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "Llave pública SSH para la VM"
  type        = string
}
