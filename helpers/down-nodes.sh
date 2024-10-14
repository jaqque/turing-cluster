#!/bin/sh

cd "$(dirname $0)/.." || exit 1
command -v ansible-playbook >/dev/null \
  || . "$HOME/ansible/bin/activate"

ansible-playbook helpers/ping.yml \
	| sort \
	| grep ok=0 \
	| grep -E '[! ]=1'

if [ $? -ne 0 ]; then
	exit
else
	exit 1
fi
