docker node ls

sleep 5

docker network create -d overlay --attachable hyperledger-fabric

sleep 5

docker stack deploy --compose-file docker-compose-cli.yaml hyperledger-fabric && docker ps -a
