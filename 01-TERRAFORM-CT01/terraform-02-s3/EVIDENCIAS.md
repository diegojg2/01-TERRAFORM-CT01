PS D:\DJ\devops\01-TERRAFORM-CT01\terraform-02-s3> aws sts get-caller-identity --region us-east-1
{                                                                                                                                                                                           
    "UserId": "AROA3MCDEP5D2WPOIP7GM:user4611055=a29318@svalero.com",
    "Account": "781824851783",
    "Arn": "arn:aws:sts::781824851783:assumed-role/voclabs/user4611055=a29318@svalero.com"
}

PS D:\DJ\devops\01-TERRAFORM-CT01\terraform-02-s3> terraform init
Initializing the backend...

Initializing provider plugins...
- Using previously-installed hashicorp/aws v6.65.0


You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS D:\DJ\devops\01-TERRAFORM-CT01\terraform-02-s3> terraform validate
Success! The configuration is valid.

PS D:\DJ\devops\01-TERRAFORM-CT01\terraform-02-s3> terraform plan
aws_s3_bucket.bucket_aula: Refreshing state... [id=s3-bucket-diegojusto]

Planning failed. Terraform encountered an error while generating this plan.
╷
│ Error: reading S3 Bucket (s3-bucket-diegojusto) object lock configuration: operation error S3: GetObjectLockConfiguration, https response error StatusCode: 403, RequestID: MZNWSVNEKP6YBKF4, HostID: XGpiCY9n6ExipadbJBTt6NpEI8ftJWXLzWfVVlpUOf9PYAcfXRfWsVXcEybWJHigEB8dcrK2vAuqD/UAkilzCgb1tIW6L+Ks, api error AccessDenied: User: arn:aws:sts::781824851783:assumed-role/voclabs/user4611055=a29318@svalero.com is not authorized to perform: s3:GetBucketObjectLockConfiguration on resource: "arn:aws:s3:::s3-bucket-diegojusto" with an explicit deny in a service control policy: arn:aws:organizations::021312171183:policy/o-zmj0qsgu0z/service_control_policy/p-6v4y751d
│ 
│   with aws_s3_bucket.bucket_aula,
│   on main.tf line 13, in resource "aws_s3_bucket" "bucket_aula":
│   13: resource "aws_s3_bucket" "bucket_aula" {
│ 
╵
PS D:\DJ\devops\01-TERRAFORM-CT01\terraform-02-s3> terraform apply
╷
│ Error: reading S3 Bucket (s3-bucket-diegojusto) object lock configuration: operation error S3: GetObjectLockConfiguration, https response error StatusCode: 403, RequestID: 58Q4ZPE36G1FA784, HostID: Ti/opuTbMSlOYPHC5WLaCGNxvIErutjx5OkIbmD7fs5Umgrk1N04pTy3DneJNsntlY519udVK5k=, api error AccessDenied: User: arn:aws:sts::781824851783:assumed-role/voclabs/user4611055=a29318@svalero.com is not authorized to perform: s3:GetBucketObjectLockConfiguration on resource: "arn:aws:s3:::s3-bucket-diegojusto" with an explicit deny in a service control policy: arn:aws:organizations::021312171183:policy/o-zmj0qsgu0z/service_control_policy/p-6v4y751d
│ 
│   with aws_s3_bucket.bucket_aula,
│   on main.tf line 13, in resource "aws_s3_bucket" "bucket_aula":
│   13: resource "aws_s3_bucket" "bucket_aula" {
│ 
╵
PS D:\DJ\devops\01-TERRAFORM-CT01\terraform-02-s3> terraform destroy
╷
│ Error: reading S3 Bucket (s3-bucket-diegojusto) object lock configuration: operation error S3: GetObjectLockConfiguration, https response error StatusCode: 403, RequestID: N3H2B6R0HVNSDSVT, HostID: fCnw5xBLRiYNR4FwTTxiVy7JY5XiNBp/zwhHBZN3eFKC7V02FKWg0qg0bP/eEsYzUtwincpSnjs=, api error AccessDenied: User: arn:aws:sts::781824851783:assumed-role/voclabs/user4611055=a29318@svalero.com is not authorized to perform: s3:GetBucketObjectLockConfiguration on resource: "arn:aws:s3:::s3-bucket-diegojusto" with an explicit deny in a service control policy: arn:aws:organizations::021312171183:policy/o-zmj0qsgu0z/service_control_policy/p-6v4y751d
│ 
│   with aws_s3_bucket.bucket_aula,
│   on main.tf line 13, in resource "aws_s3_bucket" "bucket_aula":
│   13: resource "aws_s3_bucket" "bucket_aula" {
│ 
╵

aws: [ERROR]: An error occurred (ParamValidation): argument subcommand: Found invalid choice 'list'


usage: aws [options] <command> <subcommand> [<subcommand> ...] [parameters]
To see help text, you can run:

  aws help
  aws <command> help
  aws <command> <subcommand> help

PS D:\DJ\devops\01-TERRAFORM-CT01\terraform-02-s3> aws s3 ls
2026-09-14 17:38:43 devops-prueba-diegoj-2026
2026-09-17 09:16:22 s3-bucket-diegojusto