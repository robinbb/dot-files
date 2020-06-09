with (import <nixpkgs> {});
import ./basic.nix //
import ./haskell.nix //
import ./mercurial.nix //
import ./nodejs.nix //
import ./sqitch.nix //
import ./tmux.nix //
import ./util.nix //
{ inherit
     mysql57
     nix-generate-from-cpan
     postgresql
     ;
}
