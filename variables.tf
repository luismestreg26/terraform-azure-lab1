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

variable "admin_password" {
  description = "Contraseña del usuario administrador de la VM"
  type        = string
  default     = "Password1234!"
}
