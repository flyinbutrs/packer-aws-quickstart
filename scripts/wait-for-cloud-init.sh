#!/bin/bash
echo -n 'Waiting for cloud-init'
while [ -n "$(ps -A | grep cloud-init)" ]
  do echo -n . ; sleep 1; done
echo 'cloud-init finished.'