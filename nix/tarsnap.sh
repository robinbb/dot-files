#!/bin/sh

set -xe

nix-env \
  --option use-binary-caches true \
  -I nixpkgs=.. \
  -p ./env-tarsnap \
  -f tarsnap_packages.nix \
  -i
