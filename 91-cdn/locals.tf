locals {
    acm_certificate_arn = data.aws_ssm_parameter.acm_certificate_arn.value 
    common_tags = {
        Project = var.project_name
        Environment = var.environment
        Terraform = "true"
    }
}