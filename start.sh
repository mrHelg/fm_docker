sudo docker build -t server:0.1 -f ./Dockerfile-dev .

# Check if server_docker are present (run or paused)
if sudo docker ps -a | grep server_docker; 
then 
  sudo docker start -i server_docker
else
  sudo docker run -dit -p 8080:3000 -v $(pwd):/app:ro --name server_docker server:0.1
fi