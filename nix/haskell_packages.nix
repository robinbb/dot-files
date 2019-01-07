with (import <nixpkgs> {});
{ inherit
     ghc
     stack
     ;
  # cabal2nix = haskellPackages.cabal2nix ;
  cabal-install = haskellPackages.cabal-install ;
}
