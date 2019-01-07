with (import <nixpkgs> {});
import ./basic_packages.nix //
import ./haskell_packages.nix //
import ./mercurial_packages.nix //
import ./nodejs_packages.nix //
import ./sqitch_packages.nix //
import ./tarsnap_packages.nix //
import ./tmux_packages.nix //
import ./util_packages.nix //
{ inherit
     mysql55
     nix-generate-from-cpan
     postgresql
     ;
}
