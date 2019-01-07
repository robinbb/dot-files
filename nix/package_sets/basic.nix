with (import <nixpkgs> {});
import ./00_packages.nix //
import ./tarsnap_packages.nix //
{ inherit
     dash
     gnupg
     gnused
     openssh
     stow
     ;
}
