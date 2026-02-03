variable "project_name" {
  default = "roboshop"
}
variable "environment" {
  default = "dev"
}

variable "sg_names" {
  default = [
    #Databases
    "mongodb", "redis", "mysql", "rabbitmq",
    #backend
    "catalogue", "user", "cart", "shipping", "payment", 
    #Frontend
    "frontend",
    #bastion
    "bastion",
    #frontend Load balancer
    "frontend_alb",
    #Backend ALB
    "backend_alb"
  ]
}

variable "zone_id" {
  default = "Z09862333DG9EIMMVCYEW"
}
variable "domain_name" {
  default = "userbolla.store"
}