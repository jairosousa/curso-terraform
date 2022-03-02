# Comando formatar arquivo
```
terraform fmt
```

# Update
```
terraform plan -out="tfplan.out"
```

Flag `-out="tfplan.out"` => O terraform vai escrever nessa arquivo o output terraform plan quando executar o aplly usa esse arquivo

```
terraform apply "tfplan.out"
```

# Destruir os recursos

```
terraform destroy
```