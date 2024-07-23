# Terraform-ha-linky

## Construire image docker :
docker build https://github.com/bokub/ha-linky.git -f standalone.Dockerfile -t ha-linky

## Déposer fichier options.json dans le répertoire cibl▒e
ici $HOME/linky

## Déployer via terraform
terraform apply

## Vérifier conteneur docker
docker ps



