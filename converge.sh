#!/bin/bash

CHEF_REPO=/root/jsirex-chef-repo
RECIPE=${1:-default}

export rvmsudo_secure_path=1

if [ whoami == "root" ]; then
    echo "Expected to run this script as regular user. sudo will be inside"
    return 1
fi

echo "Prepare Chef Repository: $CHEF_REPO"
test -d $CHEF_REPO || sudo mkdir -p $CHEF_REPO

test -f Berksfile.lock || (echo "Installing cookbooks"; berks install)

echo "Vendoring cookbooks"
rvmsudo berks vendor --except=integration --delete $CHEF_REPO/cookbooks

echo "Converging"
rvmsudo chef-client -c knife.rb -r jsirex-workstation::$RECIPE
