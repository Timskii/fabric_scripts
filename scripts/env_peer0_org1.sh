export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.kz/peers/peer0.org1.kz/tls/ca.crt

export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.kz/peers/peer0.org1.kz/tls/server.key

export CORE_PEER_LOCALMSPID=Org1MSP

export CORE_VM_ENDPOINT=unix:///host/var/run/docker.sock

export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.kz/peers/peer0.org1.kz/tls/server.crt

export CORE_PEER_TLS_ENABLED=true

export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.kz/users/Admin@org1.kz/msp

export CORE_PEER_ID=cli

export CORE_LOGGING_LEVEL=INFO

export CORE_PEER_ADDRESS=peer0.org1.kz:7051
