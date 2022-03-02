## Formatar arquivos dentro de pastas
```shell
terraform fmt -recursive
```

## Carregar backend via variaveis

* Alterar o arquivo `main.ts`

```terraform
  backend "s3" {}
```

* Passar os valores configuração no `terraform init` 
```shell
terraform init -backend=true -backend-config="bucket=tfstate-797479231237" -backend-config="key=dev/01-usando-remote-state/terraform.tfstate" -backend-config="region=us-east-1" -backend-config="profile=aprendizado"
```

## Outro modo passar a configuração

* Criar arquivo `backend.hcl`
```shell
terraform init -backend=true -backend-config="backend.hcl"
```

* Destruir as estancias
```shell
terraform destroy -auto-approve
```