bin/cryptogen generate ==config=./crypto-config.yaml

sleep 3
export FABRIC_CFG_PATH=$PWD

sleep 3


bin/configtxgen  -profile TwoOrgsOrdererGenesis -outputBlock ./channel-artifacts/genesis.block

sleep 3

export CHANNEL_NAME=mychannel  && bin/configtxgen -profile TwoOrgsChannel -outputCreateChannelTx ./channel-artifacts/
