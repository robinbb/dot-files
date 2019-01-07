#!/bin/sh

set +xe

nix-env -I nixpkgs=.. \
   -p ./env-haskell \
   -f haskell_packages.nix \
   -i
