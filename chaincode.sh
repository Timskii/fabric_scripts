
#account
docker exec -e "CORE_PEER_ADDRESS=peer.bank1.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank1MSP" -e "CORE_PEER_MSPCONFIGPAT=H/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank2.kz/users/Admin@bank1.kz/msp" cli peer chaincode install -n $1 -v $3 -l golang -p github.com/chaincode/$1
docker exec -e "CORE_PEER_ADDRESS=peer.bank2.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank2MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank2.kz/users/Admin@bank2.kz/msp" cli peer chaincode install -n $1 -v $3 -l golang -p github.com/chaincode/$1
docker exec -e "CORE_PEER_ADDRESS=peer.bank3.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank3MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank3.kz/users/Admin@bank3.kz/msp" cli peer chaincode install -n $1 -v $3 -l golang -p github.com/chaincode/$1
docker exec -e "CORE_PEER_ADDRESS=peer.bank1.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank1.kz/users/Admin@bank1.kz/msp" cli peer chaincode $2 -o orderer.kz:7050  -C mychannel -n $1 -l golang -v $3 -c '{"Args":["init"]}' 