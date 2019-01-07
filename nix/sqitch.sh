#!/bin/sh

set -xe

nix-env -I nixpkgs=.. \
   -p ./env-sqitch \
   -f sqitch_packages.nix \
   -i
