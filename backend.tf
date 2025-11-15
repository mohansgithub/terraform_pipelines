 terraform {
    backend "s3" {
        bucket = "mohanraj-terraform-states"
        key    = "terraform/state/terraform.tfstate"
        use_lockfile = "true"
        region = "ap-south-1"
    }
   
 }
