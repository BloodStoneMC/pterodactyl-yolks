#!/bin/bash
cd /home/container || exit 1

java -version

INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

# shellcheck disable=SC2086
MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')

# shellcheck disable=SC2086
eval ${MODIFIED_STARTUP}
