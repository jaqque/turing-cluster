#!/bin/sh

cd "$(dirname $0)/.." || exit 1
command -v ansible-playbook >/dev/null \
  || . "$HOME/ansible/bin/activate"

ansible-playbook helpers/ping.yml \
	| sort \
	|  sed -nE '/ok=0/s/ .*( [a-z]+)=1.*/\1/p'
#	| grep ok=0 \
#	| grep -E '[! ]=1' # i forget what this line was supposed to do,
#	# but it somehow silenced the down node reporting
#	# replaced it with a single sed(1) that renders only the name
#	# of a down node

exit $?

if [ $? -ne 0 ]; then
	exit
else
	exit 1
fi
