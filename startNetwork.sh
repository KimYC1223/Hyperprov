docker node ls

docker network create -d overlay --attachable hyperledger-fabric

docker stack deploy --compose-file docker-compose-cli.yaml Hyperprov && docker ps

./scripts/script_ds.sh
