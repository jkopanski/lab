#! /bin/bash

set -ex

# make sure all changes are committed
git checkout live
git checkout -

# build the site
nix-build
RESULT=$(cd result; pwd -P)

# deploy the site
git checkout live

