docker build --tag olihock/actuator:1.0.0 .
docker push olihock/actuator:1.0.0
#docker run --name actuator --port 7003:7003 olihock/actuator:1.0.0

kubectl apply -f k8s/actuator-deployment.yaml
