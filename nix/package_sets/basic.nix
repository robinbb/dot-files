with (import <nixpkgs> {});
import ./00.nix //
import ./tarsnap.nix //
{ inherit
     dash
     gnupg
     gnused
     openssh
     stow
     ;
}
