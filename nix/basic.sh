#!/bin/sh

set -xe

nix-env \
  --option use-binary-caches true \
  -I nixpkgs=.. \
  -p ./env-basic \
  -f basic_packages.nix \
  -i
