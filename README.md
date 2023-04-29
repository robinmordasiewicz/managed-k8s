export TF_VAR_tenant
export tenant=${TF_VAR_tenant}

export TF_VAR_VOLT_API_P12_FILE="${TF_VAR_tenant}.console.ves.volterra.io.api-creds.p12"
export VOLT_API_P12_FILE="${TF_VAR_tenant}.console.ves.volterra.io.api-creds.p12"
echo "server-urls: https://${TF_VAR_tenant}.console.ves.volterra.io/api" > .vesconfig
echo "p12-bundle: ${TF_VAR_tenant}.console.ves.volterra.io.api-creds.p12" >> .vesconfig

echo "terraform providers lock -platform=windows_amd64 -platform=darwin_amd64 -platform=linux_amd64"
echo "terraform init"
echo "terraform plan"
echo "terraform apply"
echo "vesctl --config .vesconfig configuration get namespace ${TF_VAR_namespace}"
echo "vesctl --config .vesconfig configuration get healthcheck -n ${TF_VAR_namespace}"
echo "vesctl --config .vesconfig configuration get healthcheck http-healthcheck -n ${TF_VAR_namespace}"
echo "vesctl --config .vesconfig configuration get http_loadbalancer -n ${TF_VAR_namespace}"
echo "vesctl --config .vesconfig configuration get http_loadbalancer http-lb -n ${TF_VAR_namespace}"
