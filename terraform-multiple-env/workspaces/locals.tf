locals {
    # environment =looup(var.environment,terraform.workspace)
    common_name= "${var.project}-${terraform.workspace}"
    common_tags = {
      project = var.project
      Terraform = "true"  
    }
} 

    