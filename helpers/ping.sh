#!/bin/sh

cd "$(dirname $0)/.." || exit 1
command -v ansible-playbook >/dev/null \
  || . "$HOME/ansible/bin/activate"

ansible-playbook helpers/ping.yml
