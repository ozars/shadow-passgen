#!/bin/sh

if [ "$#" -ne 1 ]; then
    >&2 echo Usage: "$0" "<password-file-path>"
    exit 1
fi

if [ ! -f "$1" ]; then
    >&2 echo Error: File \'"$1"\' not found.
    exit 1
fi

>/dev/null 2>&1 cp -f "$1" shadowgen-docker-data/passwords.txt
>/dev/null 2>&1 docker rmi shadowgen:latest
docker build --no-cache -t shadowgen:latest shadowgen-docker-data/ \
    | grep -e "^netsec[0-9]\+"
>/dev/null 2>&1 docker image rm shadowgen:latest
>/dev/null 2>&1 rm -f shadowgen-docker-data/passwords.txt
