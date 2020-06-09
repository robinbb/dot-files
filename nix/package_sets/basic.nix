with (import <nixpkgs> {});
import ./00.nix //
{ inherit
     dash
     gnupg
     gnused
     openssh
     stow
     ;
}
