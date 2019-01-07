#!/bin/sh

set -xe

nix-env -I nixpkgs=.. \
  -p ./env-tmux \
  -f tmux_packages.nix \
  -i
