# terraform-demo

First, make sure that you are logged in the correct project with the correct credentials in the CLI:

```
gcloud auth application-default login --project <your_project_name>
```
Then, run initialize terraform to set the correct backend configurations:

```
terraform init -backend-config=backends/<env>.tfbackend
```

Optionally, you can runs checks to verify whether your files are syntactically valid and internally consistent:

```
terraform validate
```

Now you can rn a plan to see what will be the changes: 

```
terraform plan -var-file="tfvars/<env>.tfvars"
```

If you are ok with the proposed changes, then run the apply commando:

```
terraform apply -var-file="tfvars/<env>.tfvars"
```

To delete all deployed infrastructure, run a destroy:

```
terraform destroy -var-file="tfvars/<env>.tfvars"
```
