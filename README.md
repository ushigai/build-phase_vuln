```
docker ps -aq | xargs docker rm -f
docker images prune
docker volume prune
docker build -t vuln_container .
docker run -p 5000:80 -ti vuln_container
```
