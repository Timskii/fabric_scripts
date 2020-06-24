#!/bin/bash

if [ ! -d "./channel-artifacts" ]; then
	echo "create dit channel-artifacts"
	mkdir "channel-artifacts"
fi


../bin/cryptogen generate --config=./crypto-config.yaml