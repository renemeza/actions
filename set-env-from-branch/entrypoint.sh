#!/bin/sh

set -e

BRANCH=$(echo $GITHUB_REF | sed s,^refs/heads/,,)
ENV=dev

if [[ $BRANCH == staging ]]; then
  ENV=stag
elif [[ $BRANCH == production ]]; then
  ENV=prod
elif [[ $BRANCH == master ]]; then
  ENV=test
fi

touch $HOME/current_env.sh

echo "#\!/bin/sh
export CONFIG_ENV=${ENV}" > $HOME/current_env.sh

