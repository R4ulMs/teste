docker stop teste 2> /dev/null || true
docker container rm $(docker ps -a -q --filter="name=teste") 2> /dev/null || true
docker rmi $(docker images --filter=reference="*teste:latest*" -q) 2> /dev/null || true
docker build -t teste:latest .
docker run -d -p 3000:3000 --name teste teste:latest