variable "aws_region" {
  description = "Region in which AWS resources are created"
  type        = string
  default     = "exameple-region"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_availability_zones" {
  description = "VPC Availability Zones"
  type        = list(string)
  default     = ["exameple-region-a", "exameple-region-c"]
}

variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "global_destination_cidr_block" {
  description = "CIDR Block for all IPs"
  type        = string
  default     = "0.0.0.0/0"
}

variable "bastion_host_cidr" {
  description = "CIDR Block for Bastion Host Ingress"
  type        = string
  default     = "" #your IP loca
}

variable "https_ssl_policy" {
  description = "HTTPS SSL Policy"
  type        = string
  default     = "ELBSecurityPolicy-2016-08"
}

variable "main_api_server_domain" {
  description = "Main API Server Domain" //Dominio del servidor de la API principal
  type        = string                   //Tipo de variable
  default     = "axample.dominio.xyz"       //Valor por defecto
}

variable "dev_api_server_domain" {
  description = "Dev API Server Domain"
  type        = string
  default     = "api.dev.axample.dominio.xyz"

}

variable "ec2_iam_role_name" {
  description = "EC2 IAM Role Name"
  type        = string
  default     = "example-ec2-roles-name"

}

variable "ec2_iam_role_policy_name" {
  description = "EC2 IAM Role Policy Name"
  type        = string
  default     = "example-ec2-roles-policy-name"

}

variable "ec2_instance_profile_name" {
  description = "EC2 Instance Profile Name"
  type        = string
  default     = "example-ec2-instance-profiles-name"
}

variable "elasticache_node_type" {
  description = "Elasticache Node Type"
  type        = string
  default     = "cache.r5.large"
  # default     = "cache.t2.micro"
}

variable "elasticache_parameter_group_name" {
  description = "Elasticache Parameter Group Name"
  type        = string
  default     = "default.redis7"
  # default     = "default.redis6.x"
}

variable "ec2_instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.medium"
}

variable "bastion_host_type" {
  description = "Bastion Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "code_deploy_role_names" {
  description = "CodeDeploy IAM Role"
  type        = string
  default     = "example-codedeploy-role-name"
}

variable "prefix" {
  description = "Prefix to be added to AWS resources tags"
  type        = string
  default     = "example-server"
}

variable "project" {
  description = "Prefix to be added to AWS resources local tags"
  type        = string
  default     = "example-server"
}
