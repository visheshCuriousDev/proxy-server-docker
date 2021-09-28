# Give permission to the sock file else docker will not run
sudo chmod 666 /var/run/docker.sock
# This stops any runing instances
docker-compose kill
# This will start build the docker yaml file
docker-compose up -d
# This starts the proxy1
docker-compose run -d proxy1
