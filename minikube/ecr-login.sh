aws ecr get-login-password --region us-east-1 | \
docker login --username AWS --password-stdin 949829287785.dkr.ecr.us-east-1.amazonaws.com


kubectl create secret docker-registry ecr-creds \
  --docker-server=949829287785.dkr.ecr.us-east-1.amazonaws.com \
  --docker-username=AWS \
  --docker-password=$(aws ecr get-login-password) \
  --namespace=udacity