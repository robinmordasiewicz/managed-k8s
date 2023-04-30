terraform init

terraform plan

terraform apply

terraform plan -destroy -out=destroy.tfplan

terraform apply "destroy.tfplan"
