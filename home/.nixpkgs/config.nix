{ allowBroken = true ;
  allowUnfree = true ;

#   packageOverrides = pkgs: rec {
#     haskellPackages = with pkgs.haskellPackages; pkgs.haskellPackages // rec {
#       packageName = callPackage ./haskell/package-name.nix {};
#       ...
#     };
#   };
}
