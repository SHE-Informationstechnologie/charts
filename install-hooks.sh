#!/usr/bin/env bash

GREEN='\033[0;32m'
NOCOLOR='\033[0m'

function info {
  echo -e "[${GREEN}Info${NOCOLOR}] ${@}"
}

if ! [ -d "./hooks" ]
then
  >&2 echo "No ./hooks direcoty present"
  exit 1
fi

info "Installing hooks"

for hook in $(find ./hooks/ -type f)
do
  hook_name=$(basename $hook)
  info "Installint hooks $hook_name"
  cp $hook .git/hooks/$hook_name
done

info "Done"
