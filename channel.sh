
# Create the channel
docker exec -e "CORE_PEER_LOCALMSPID=Bank1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank1.kz/users/Admin@bank1.kz/msp" cli peer channel create -o orderer.kz:7050 -c channel1 -f /opt/gopath/src/github.com/hyperledger/fabric/peer/configtx/channel.tx

# Join banks to the channel.
docker exec -e "CORE_PEER_ADDRESS=peer.bank1.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank1.kz/users/Admin@bank1.kz/msp" cli peer channel join -b channel1.block
docker exec -e "CORE_PEER_ADDRESS=peer.bank2.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank2MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank2.kz/users/Admin@bank2.kz/msp" cli peer channel join -b channel1.block
docker exec -e "CORE_PEER_ADDRESS=peer.bank3.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank3MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank3.kz/users/Admin@bank3.kz/msp" cli peer channel join -b channel1.block

#update channel
docker exec -e "CORE_PEER_ADDRESS=peer.bank1.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank1.kz/users/Admin@bank1.kz/msp" cli peer channel update -o orderer.kz:7050 -c channel1 -f /opt/gopath/src/github.com/hyperledger/fabric/peer/configtx/Bank1MSPanchors.tx
docker exec -e "CORE_PEER_ADDRESS=peer.bank2.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank2MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank2.kz/users/Admin@bank2.kz/msp" cli peer channel update -o orderer.kz:7050 -c channel1 -f /opt/gopath/src/github.com/hyperledger/fabric/peer/configtx/Bank2MSPanchors.tx
docker exec -e "CORE_PEER_ADDRESS=peer.bank3.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank3MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank3.kz/users/Admin@bank3.kz/msp" cli peer channel update -o orderer.kz:7050 -c channel1 -f /opt/gopath/src/github.com/hyperledger/fabric/peer/configtx/Bank3MSPanchors.tx



