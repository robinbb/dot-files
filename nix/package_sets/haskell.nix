with (import <nixpkgs> {});
{ inherit
     cabal-install
     cabal2nix
     ghc
     stack
     ;
  # cabal2nix = haskellPackages.cabal2nix ;
  # cabal-install = haskellPackages.cabal-install ;
}
