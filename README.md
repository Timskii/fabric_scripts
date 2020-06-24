репозиторий предназначен для настройки конфигураций HLFabric
==========================================================

1)`./configtxgen.sh`  -- генерация сертификатов, артефактов для канала, только для убунту пока

после выполнении необходимо изменить docker-compose_full.yaml, установить для сервиса ca.kz значение перменной FABRIC_CA_SERVER_CA_KEYFILE=/etc/hyperledger/fabric-ca-server-config/имя_файла, где имя_файла  равной имени файла в директории ./crypto-config/peerOrganizations/bank1.kz/ca/имя_sk

2)`./start.sh`   -- пока просто запуск docker-compose

3)`./channel.sh`     -- создание/подключение/обновление канала и пиров

4)`./install_chaincode.sh`   -- ну и деплоим chaincode)


-----------------------------------------------------
для ручной инсталяции chaincode используйте:

`./chainode.sh name command version`

`name` - имя chaincode и директории

`version` - версия chaincode

`comand` - одна из команд `instantiate` или `upgrade`

пример `./chainode.sh invoice instantiate 1`
пример `./chainode.sh invoice upgrade 2`