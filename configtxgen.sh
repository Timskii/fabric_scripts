#!/bin/bash

if [ ! -d "./channel-artifacts" ]; then
	echo "create dit channel-artifacts"
	mkdir "channel-artifacts"
fi


./bin/cryptogen generate --config=./crypto-config.yaml

./bin/configtxgen -profile ThreeOrgsOrdererGenesis -channelID channel0 -outputBlock ./channel-artifacts/genesis.block

./bin/configtxgen -profile ThreeOrgsChannel -outputCreateChannelTx ./channel-artifacts/channel.tx -channelID channel1

./bin/configtxgen -profile ThreeOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Bank1MSPanchors.tx -channelID channel1 -asOrg Bank1MSP
./bin/configtxgen -profile ThreeOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Bank2MSPanchors.tx -channelID channel1 -asOrg Bank2MSP
./bin/configtxgen -profile ThreeOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Bank3MSPanchors.tx -channelID channel1 -asOrg Bank3MSP