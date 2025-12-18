# Inicialización
terraform {
  required_providers {
    render = {
      source  = "render-oss/render"
      version = "~> 1.0"
    }
  }
}
# Provider que será Render en este caso
provider "render" {
  api_key = var.render_api_key
  owner_id = var.owner_id
}
# Despliegue de la base de datos
resource "render_postgres" "db" {
  name     = var.db_name
  region  = var.region
  plan     = "starter"       # plan de pago más económico
  version  = "18"

}
# Despliegue del backend
resource "render_web_service" "web" {
  name               = "cubitwelve-api-service"
  plan               = "starter"
  region  = var.region

  env_vars = {
    "JWT_SECRET" = { value = var.jwt_secret }
    "DATABASE_URL" = { value = var.database_url }
    "MSSQL_SA_PASSWORD" = { value = var.mssql_sa_password }
  }

  runtime_source = {
    image = {
      image_url = var.backend_image
    }
  }
}
# Despliegue del Frontend
resource "render_web_service" "frontend" {
  name    = var.frontend_name
  plan    = "starter"
  region  = var.region

  runtime_source = {
    image = {
      image_url = var.frontend_image
    }
  }
}