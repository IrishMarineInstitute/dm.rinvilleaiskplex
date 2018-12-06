# dm.rinvilleaiskplex

```
docker build -t 127.0.0.1:5000/rinvilleaiskplex .
docker push 127.0.0.1:5000/rinvilleaiskplex
docker service create --name rinvilleaiskplex --publish 2101:2101  127.0.0.1:5000/rinvilleaiskplex:latest
```

