docker build --tag actuator:1.0.0 .
docker run --name actuator --port 7003:7003 actuator:1.0.0
