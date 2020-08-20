
#install/instantiate invoice chaincode
#docker exec -e "CORE_PEER_ADDRESS=peer.bank1.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank1.kz/users/Admin@bank1.kz/msp" cli peer chaincode install -n invoice -v 1 -l golang -p github.com/chaincode/invoice
#docker exec -e "CORE_PEER_ADDRESS=peer.bank2.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank2MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank2.kz/users/Admin@bank2.kz/msp" cli peer chaincode install -n invoice -v 1 -l golang -p github.com/chaincode/invoice
#docker exec -e "CORE_PEER_ADDRESS=peer.bank3.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank3MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank3.kz/users/Admin@bank3.kz/msp" cli peer chaincode install -n invoice -v 1 -l golang -p github.com/chaincode/invoice
#docker exec -e "CORE_PEER_ADDRESS=peer.bank1.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank1.kz/users/Admin@bank1.kz/msp" cli peer chaincode instantiate -o orderer.kz:7050  -C mychannel -n invoice -l golang -v 1 -c '{"Args":["init"]}' 


##install/instantiate account chaincode
#docker exec -e "CORE_PEER_ADDRESS=peer.bank1.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank1.kz/users/Admin@bank1.kz/msp" cli peer chaincode install -n account -v 1 -l golang -p github.com/chaincode/account
#docker exec -e "CORE_PEER_ADDRESS=peer.bank2.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank2MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank2.kz/users/Admin@bank2.kz/msp" cli peer chaincode install -n account -v 1 -l golang -p github.com/chaincode/account
#docker exec -e "CORE_PEER_ADDRESS=peer.bank3.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank3MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank3.kz/users/Admin@bank3.kz/msp" cli peer chaincode install -n account -v 1 -l golang -p github.com/chaincode/account
#docker exec -e "CORE_PEER_ADDRESS=peer.bank1.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank1.kz/users/Admin@bank1.kz/msp" cli peer chaincode instantiate -o orderer.kz:7050  -C mychannel -n account -l golang -v 1 -c '{"Args":["init"]}' 

##install/instantiate listorder chaincode
#docker exec -e "CORE_PEER_ADDRESS=peer.bank1.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank1.kz/users/Admin@bank1.kz/msp" cli peer chaincode install -n listorder -v 1 -l golang -p github.com/chaincode/listorder
#docker exec -e "CORE_PEER_ADDRESS=peer.bank2.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank2MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank2.kz/users/Admin@bank2.kz/msp" cli peer chaincode install -n listorder -v 1 -l golang -p github.com/chaincode/listorder
#docker exec -e "CORE_PEER_ADDRESS=peer.bank3.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank3MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank3.kz/users/Admin@bank3.kz/msp" cli peer chaincode install -n listorder -v 1 -l golang -p github.com/chaincode/listorder
#docker exec -e "CORE_PEER_ADDRESS=peer.bank1.kz:7051" -e "CORE_PEER_LOCALMSPID=Bank1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/bank1.kz/users/Admin@bank1.kz/msp" cli peer chaincode instantiate -o orderer.kz:7050  -C mychannel -n listorder -l golang -v 1 -c '{"Args":["init"]}' 


cd ../chaincode

./install_all_cc.sh