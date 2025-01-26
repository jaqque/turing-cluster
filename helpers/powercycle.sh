#!/bin/sh

cd "$(dirname $0)/.." || exit 1
command -v ansible-playbook >/dev/null \
  || . "$HOME/ansible/bin/activate"

while [ "$1" ]; do
  ansible-playbook helpers/powercycle.yml -e node="$1"
  shift
done
