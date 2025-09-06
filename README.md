# terraform-azure-lab1

# Laboratorio Terraform + Azure (Windows) con SSH

Este repositorio contiene un laboratorio de Terraform para crear una VM Linux básica en Azure, usando **SSH** para autenticación.

## Requisitos
- Windows 10/11
- PowerShell
- Terraform
- Azure CLI
- Visual Studio Code (opcional)
- Llave SSH generada en Windows

### Generar llaves SSH en Windows
```powershell
ssh-keygen -t rsa -b 4096 -f C:\Users\TU-USUARIO\.ssh\id_rsa

### Inicializar y desplegar
terraform init
terraform plan
terraform apply -auto-approve

### Destruir recursos
terraform destroy -auto-approve
