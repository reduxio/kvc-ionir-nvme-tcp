#!/bin/bash

lver=$(cat /proc/version)
echo "version: $lver"
if [[ "${lver}" =~ 4\.18\.[[:digit:]]+\-305 ]]; then
  echo "Loading ionir-nvme-tcp driver"
  exec /sbin/init
#  systemctl enable kmods-via-containers@ionir-nvme-tcp
#  exec /sbin/init
else
  echo "Loading nvme-tcp original driver"
  modprobe nvme-tcp
  sleep infinity
fi





