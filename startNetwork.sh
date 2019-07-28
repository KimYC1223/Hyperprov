docker node ls

sleep 20

docker network create -d overlay --attachable hyperledger-fabric

sleep 20

docker stack deploy --compose-file docker-compose-cli.yaml Hyperprov && docker ps

sleep 30

./scripts/script_ds.sh
