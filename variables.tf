# Variables de Render
variable "render_api_key" {
  type        = string
  default     = "rnd_jBVJ43PvVgPrEMdHuVvNpkJKb7Cz"
  description = "API key de Render"
}
variable "region" {
  type        = string
  default     = "oregon"
  description = "Región donde se crean los servicios"
}
variable owner_id {
   type        = string
   default = "tea-d35jb4mr433s73a99ldg"
   description = "Owner ID de Render"
}
# Base de datos
variable "db_name" {
  type        = string
  default     = "master"
  description = "Nombre del la base de datos"
}
variable "db_user" {
  type        = string
  default     = "sa"
  description = "Nombre de usuario"
}
variable "db_password" {
  type        = string
  default     = "uKe1WWKzOqun8KE28Pdj0Pw77PajyYyi"
  description = "Contraseña del usuario BDD"
}

# Backend
variable "backend_name" {
  type        = string
  default     = "cubi12-backend"
  description = "Nombre del servicio backend"
}

variable "backend_image" {
  type        = string
  default     = "albertolyonsz/cubitwelve-app"
  description = "Imagen Docker del backend"
}

variable "database_url" {
  description = "Connection string completa de PostgreSQL"
  default     = "dpg-d51is1juibrs739ak78g-a;Port=5432;Database=master_ex34;Username=sa;Password=uKe1WWKzOqun8KE28Pdj0Pw77PajyYyi;Trust Server Certificate=true;"
  sensitive   = true
}

variable "jwt_secret" {
  description = "JWT secreto"
  default     = "cae51495085d7bbf89c84c9d5b68061deca168c866d7ee146e4b61d3530f815f"
  sensitive   = true
}

variable "mssql_sa_password" {
  description = "SQL Server password"
  default     = "flLPlIc6vdJRZNwGPRfHTgL90dMtCLav"
  sensitive   = true
}

# Frontend
variable "frontend_name" {
  type        = string
  default     = "cubi12-frontend"
  description = "Nombre del servicio frontend"
}

variable "frontend_image" {
  type        = string
  default     = "bemoremore/cubi12-frontend"
  description = "Imagen Docker del frontend"
}