 terraform {
    backend "s3" {
        bucket = "mohanraj-terraform-states"
        key    = "terraform/state/terraform.tfstate"
        dynamodb_table = "terraform-lock-table"
        region = "ap-south-1"
    }
   
 }
