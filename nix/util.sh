#!/bin/sh

set -xe

nix-env \
  --option use-binary-caches true \
  -I nixpkgs=.. \
  -p ./env-util \
  -f util_packages.nix \
  -i
