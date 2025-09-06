## 1️⃣ variables.tf

Define las variables que pueden cambiar en tu infraestructura.

Sirve para parametrizar: usuario admin, contraseña o llave SSH, región, subscription ID, tamaños de VM, etc.

Ejemplo:

variable "location" { default = "East US" }


Esto permite reutilizar el código en distintas suscripciones o regiones sin modificar main.tf.

## 2️⃣ terraform.tfvars

Contiene los valores reales de las variables definidas en variables.tf.

Ejemplo:

subscription_id = "TU-SUBSCRIPTION-ID"
location        = "East US"


Terraform los carga automáticamente y sustituye las variables en tu infraestructura.

## 3️⃣ main.tf

Archivo principal donde defines todos los recursos de Azure:

Grupo de recursos

Red virtual (VNet)

Subred

NIC

VM Linux

Es el “cerebro” de tu infraestructura, donde dices qué se crea y cómo.

## 4️⃣ providers.tf

Configura el proveedor de nube (en este caso Azure).

Indica a Terraform dónde y con qué credenciales debe crear los recursos.

Ejemplo:

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}


Sin esto, Terraform no sabría en qué cuenta/subscripción trabajar.

## 5️⃣ outputs.tf

Define lo que Terraform debe mostrar al final después de crear la infraestructura.

Por ejemplo, la IP pública de la VM:

output "vm_ip" {
  value = azurerm_linux_virtual_machine.vm.public_ip_address
}


Muy útil para scripts, Ansible o simplemente para ver datos importantes sin entrar al portal de Azure.

## 6️⃣ .gitignore

Lista de archivos y carpetas que Git no debe subir al repositorio.

Evita subir:

*.tfstate → contiene información sensible de la infraestructura.

.terraform/ → directorio local de plugins y cache.

*.log → archivos temporales.

Así mantienes el repo limpio y seguro.
