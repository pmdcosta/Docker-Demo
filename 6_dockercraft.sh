# Create the dockercraft container in the swarm master host (https://github.com/docker/dockercraft)
docker run -t -i -d -p 25:25565 \
	-v /var/run/docker.sock:/var/run/docker.sock \
	--name=dockercraft \
	--net=mynet \
	--env="constraint:node==swarm-master" \
gaetan/dockercraft
