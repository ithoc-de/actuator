docker build --tag olihock/actuator:1.0.1 .
docker run --name actuator -p 7003:8080 olihock/actuator:1.0.1

#docker push olihock/actuator:1.0.1
#kubectl apply -f k8s/actuator-deployment.yaml
