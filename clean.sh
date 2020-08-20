
rm -R crypto-config/*

rm -R channel-artifacts/*

rm -R orderer.kz
rm -R peer.bank1.kz
rm -R peer.bank2.kz
rm -R peer.bank3.kz
rm -R fabric-ca-server/

docker-compose -f docker-compose_full.yaml down

