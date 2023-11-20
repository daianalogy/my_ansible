#!/bin/bash
# Ruta relativa  al playbook

PLAYBOOK_PATH=~/.ansible/playbooks/main.yml

# Directorio de trabajo del playbook

cd ~/.ansible

# env vars para la config

export ANSIBLE_CONFIG=ansible.cfg

# ejecución

ansible-playbook -v $PLAYBOOK_PATH > ~/.ansible/tmp/tmp.log 2>&1 ;
cat ~/.ansible/tmp/tmp.log >> ~/.ansible/logs/main.log
grep -oE '(skipped|ok|changed|failed|unreachable|rescued)=[1-9][0-9]*\b' ~/.ansible/tmp/tmp.log >> ~/.ansible/logs/summary.log
#grep -oE 'ok=[0-9] + changed=[0-9] + unreachable=[0-9] + failed=[0-9] + skipped=[0-9] + rescued=[0-9] + ignored=[0-9]+ ' ~/.ansible/tmp/tmp.log >> ~/.ansible/logs/summary.log

#'\(skipped\|ok\|changed\|failed\)=[1-9][0-9]*'

#grep -oE 'ok!=0 + changed!=0 + unreachable!=0 + failed!=0 + skipped!=0 + rescued!=0 + ignored!=0+ ' ~/.ansible/tmp/tmp.log >> ~/.ansible/logs/summary.log


