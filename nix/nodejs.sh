#!/bin/sh

set -xe

nix-env -I nixpkgs=.. \
   -p ./env-nodejs \
   -f nodejs_packages.nix \
   -i
