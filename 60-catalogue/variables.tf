variable "project_name" {
  default = "roboshop"
}
variable "environment" {
  default = "dev"
}

# variable "sg_names" {
#   default = [
#     #Databases
#     "mongodb", "redis", "mysql", "rabbitmq",
#     #backend
#     "catalogue", "user", "cart", "shipping", "payment", 
#     #Frontend
#     "frontend",
#     #bastion
#     "bastion",
#     #frontend Load balancer
#     "frontend_alb",
#     #Backend ALB
#     "backend_alb"
#   ]
# }