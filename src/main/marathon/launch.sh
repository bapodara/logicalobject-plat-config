#!/bin/bash

if [ "$#" -ne 1 ]; then
        echo "script takes json file as an argument"
        exit 1;
fi

curl -X DELETE 10.65.56.216:8080/v2/apps/csl-plat-config
sleep 5
curl -X POST -H "Content-Type: application/json" 10.65.56.216:8080/v2/apps -d@"$@"
