#! /bin/bash

PLACE_FILE=$(pwd)/build/placefile.rbxl

echo "Building place..."
rojo build -o $PLACE_FILE

echo "Publishing ${PLACE_FILE}"
version="$(curl -s --location POST https://apis.roblox.com/universes/v1/$UNIVERSE_ID/places/$PLACE_ID/versions?versionType=Published \
    --header 'x-api-key: '$RBX_API_KEY \
    --header 'Content-Type: application/octet-stream' \
    --data-binary @${PLACE_FILE})"

echo "Place version: $(echo $version | jq .versionNumber)"
