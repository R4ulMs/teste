docker container stop $(docker ps -a -q --filter="name=teste")
docker container rm $(docker ps -a -q --filter="name=teste")
docker rmi $(docker images --filter=reference="*teste:latest*" -q)
docker build -t teste:latest .
docker run -d -p 3000:3000 --name teste teste:latest