1 try { . "c:\Users\S2-PC00\AppData\Local\Programs\Microsoft VS Code\125df4672b\resources\app\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration.ps1" } catch {} 
2 $env:AWS_ACCESS_KEY_ID="ASIA3MCDEP5D337IJC4W"... 
3 mkdir terraform-10-tfvars 
4 cd terraform-10-tfvars 
5 terraform init 
6 terraform plan -var-file="dev.tfvars" 
7 terraform apply