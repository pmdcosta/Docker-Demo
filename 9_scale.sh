# Create webapps using with the configuration described in docker-compose.yml
docker-compose up -d

# Scale the number of webapp containers to 10
docker-compose scale web=10