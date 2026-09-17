PS D:\DJ\devops\01-TERRAFORM-CT01> aws --version
aws-cli/2.36.44 Python/3.14.6 Windows/10 exe/AMD64
PS D:\DJ\devops\01-TERRAFORM-CT01> aws sts get-caller-identity --region us-east-1
{                                                                                                                                                                                           
    "UserId": "AROA3MCDEP5D2WPOIP7GM:user4611055=a29318@svalero.com",
    "Account": "781824851783",
    "Arn": "arn:aws:sts::781824851783:assumed-role/voclabs/user4611055=a29318@svalero.com"
}

PS D:\DJ\devops\01-TERRAFORM-CT01> terraform version
Terraform v1.16.2
on windows_amd64

Your version of Terraform is out of date! The latest version
is 1.16.3. You can update by downloading from https://developer.hashicorp.com/terraform/install
    Directorio: D:\DJ\devops\01-TERRAFORM-CT01


Mode                 LastWriteTime         Length Name                                                                                                                                      
----                 -------------         ------ ----                                                                                                                                      
d-----        17/09/2026      8:44                terraform-00-configuracion                                                                                                                


PS D:\DJ\devops\01-TERRAFORM-CT01> cd terraform-00-configuracion
PS D:\DJ\devops\01-TERRAFORM-CT01\terraform-00-configuracion> code .
PS D:\DJ\devops\01-TERRAFORM-CT01\terraform-00-configuracion> terraform init
Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v6.65.0...
- Installed hashicorp/aws v6.65.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS D:\DJ\devops\01-TERRAFORM-CT01\terraform-00-configuracion> terraform validate
Success! The configuration is valid.