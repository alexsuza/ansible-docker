#!/bin/bash

PLAYBOOK="install_portainer.yaml"
ansible-playbook -vvv $PLAYBOOK 2>&1 | tee "/var/log/${PLAYBOOK%.yml}_$(date +\%Y\%m\%d\%H\%M\%S).log"