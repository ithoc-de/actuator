# Actuator

## Docker Configuration

### Dependency Caching
Create 
```
sudo vi /etc/docker/daemon.json
```
and add 
```
{
    "features": {
        "buildkit": true
    }
}
```
then run 
```
sudo service docker restart
```
and see
```
https://www.baeldung.com/ops/docker-cache-maven-dependencies
```


### Container Deployment
Change 
```
chmod u+x deploy.sh
```
and run 
```
./deploy.sh
```
then access
```
http://localhost:7003/actuator
```
and see
```
https://springframework.guru/actuator-in-spring-boot/#:~:text=Spring%20Boot%20Actuator%20is%20a,metrics%20from%20production%2Dready%20applications
```

