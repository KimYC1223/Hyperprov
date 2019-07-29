bin/cryptogen generate --config=./crypto-config.yaml

sleep 1

export FABRIC_CFG_PATH=$PWD

sleep 1

bin/configtxgen  -profile TwoOrgsOrdererGenesis -outputBlock ./channel-artifacts/genesis.block

sleep 1

export CHANNEL_NAME=mychannel  && bin/configtxgen -profile TwoOrgsChannel -outputCreateChannelTx ./channel-artifacts/channel.tx -channelID $CHANNEL_NAME

sleep 1

bin/configtxgen -profile TwoOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Org1MSPanchors.tx -channelID $CHANNEL_NAME -asOrg Org1MSP
