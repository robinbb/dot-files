with (import <nixpkgs> {});
import ./basic.nix //
import ./mercurial.nix //
import ./tarsnap.nix //
import ./tmux.nix //
import ./util.nix //
{ inherit
     nix-generate-from-cpan
     postgresql
     xstow
     ;
}

