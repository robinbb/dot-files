#!/bin/sh

set +xe

nix-env -I nixpkgs=.. \
   -p ./env-mercurial \
   -f mercurial_packages.nix \
   -i
