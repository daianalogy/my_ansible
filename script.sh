#!/bin/bash
# Ruta relativa  al playbook

PLAYBOOK_PATH=~/.ansible/playbooks/checkds.yml

# Directorio de trabajo del playbook

cd ~/.ansible

# env vars para la config

export ANSIBLE_CONFIG=ansible.cfg

# ejecución

ansible-playbook -v $PLAYBOOK_PATH >> ~/.ansible/logs/master.log 2>&1 ; 
grep -oE 'ok=[0-9] + changed=[0-9] + unreachable=[0-9] + failed=[0-9] + skipped=[0-9] + rescued=[0-9] + ignored=[0-9]+ ' 
~/.ansible/logs/master.log >> ~/.ansible/logs/summary.log

#'\(skipped\|ok\|changed\|failed\)=[1-9][0-9]*'




