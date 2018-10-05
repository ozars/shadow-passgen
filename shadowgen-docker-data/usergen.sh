#!/bin/sh

i=1
while read PASSWORD; do
    if [ ! -z "${PASSWORD}" ]; then
        NEW_USER="netsec${i}"
        echo "!!! CREATING: User '${NEW_USER}' with password '${PASSWORD}'..."
        useradd "${NEW_USER}"
        echo "${NEW_USER}:${PASSWORD}" | chpasswd
        i=$(expr ${i} + 1)
    fi
done

echo "SHADOW_BEGIN"
cat /etc/shadow
echo "SHADOW_END"
