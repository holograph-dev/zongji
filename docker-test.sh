#!/bin/bash
MYSQL_HOSTS="mysql80"

for hostname in ${MYSQL_HOSTS}; do
  echo $hostname + node 12
  docker run -it --network=zongji_default -e MYSQL_HOST=$hostname -w /build -v $PWD:/build node:12 npm test
done
