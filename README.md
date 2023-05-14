export VES_P12_PASSWORD=secretpass

terraform providers lock -platform=linux_amd64

terraform init

terraform plan

terraform apply

