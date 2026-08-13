# terraform-practica

Infraestructura AWS para un servidor de juego (EC2 + ECR + Route53), organizada en módulos reutilizables y un entorno.

## Estructura

```
bootstrap/          # crea el bucket S3 usado como backend remoto (state local, fuera del ciclo del state que gestiona)
modules/
  network/           # vpc, subnets, igw, route table
  security/          # iam role/instance profile, security group
  compute/           # ecr repo, ami, instancia ec2 + server.setup.sh
  dns/                # registro route53 del game server
environments/
  lab/                # entorno único actual: conecta los 4 módulos
```

## Uso

El bucket de state (`gonzalo-terraform-state`) ya existe y fue creado con `bootstrap/`. Su estado es local (no se versiona en git) porque no puede depender del backend remoto que él mismo provee.

```bash
# entorno lab (VPC, EC2, ECR, Route53)
cd environments/lab
terraform init
terraform plan
terraform apply

# solo si hay que recrear/tocar el bucket de state (raro)
cd bootstrap
terraform init
terraform plan
```

## Variables principales (`environments/lab/variables.tf`)

Región, CIDRs, tipo de instancia, nombre del repo ECR y dominio tienen defaults que reflejan el despliegue actual; se pueden sobrescribir con un `terraform.tfvars` (no versionado) o `-var`.
