# Terraform-ha-linky

### Construire image docker :
docker build https://github.com/bokub/ha-linky.git -f standalone.Dockerfile -t ha-linky

### Déposer fichier options.json dans le répertoire cible
ici $HOME/linky
Attention il s'agit du répertoire défini lors du déploiement de l'image Docker dans le fichier main.tf

### Déployer via terraform
terraform init
terraform plan
terraform apply

### Vérifier conteneur docker
docker ps

### Si besoin de détruire le conteneur
terraform destroy
docker ps -a  # Repérer l'ID de l'image précédemment supprimée
docker rmi [ID_image]



