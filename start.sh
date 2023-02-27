docker build -t teste:latest .
docker run -d -p 3000:3000 --name teste teste:latest
