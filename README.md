# Cisco ACI and F5 BIG-IP integration
Requirements
------------
- [Terraform](https://www.terraform.io/downloads.html) v0.11.7
- [Go](https://golang.org/doc/install) Latest Version

Using The Provider
1. Run `terraform init` to initialize it.
2. Configure user profile of `variables.tf`
3. Run the plan and apply
terraform plan
terraform apply
```
Note : If you are facing the issue of `invalid character '<' looking for beginning of value` while running `terraform apply`, use signature based authentication in that case, or else use `-parallelism=1` with `terraform plan` and `terraform apply` to limit the concurrency to one thread.

```
terraform plan -parallelism=1
terraform apply -parallelism=1
```  
