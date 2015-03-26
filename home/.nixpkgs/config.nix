{ allowBroken = true ;
  allowUnfree = true ;

#   packageOverrides = pkgs: rec {
#     haskellPackages = with pkgs.haskellPackages; pkgs.haskellPackages // rec {
#       packageName = callPackage ./haskell/package-name.nix {};
#       ...
#     };
#   };
#   packageOverrides = pkgs: rec {
#     haskellPackages = with pkgs.haskellPackages; pkgs.haskellPackages // rec {
#       # examplePkg_local = callPackage ./haskell/examplePkg_local.nix {};
#       # example2 = callPackage ./haskell/example2.nix { examplePkg = examplePkg_local; };
#       # example3 = callPackage ./haskell/example3.nix { inherit example2; };
#     };
#   };

  packageOverrides = pkgs: rec {
     haskellPackages = pkgs.recurseIntoAttrs (pkgs.haskellPackages.override {
        extension = self : super :
           let callPackage = self.callPackage;
            in rec {
                 genericDeriving_1_6_3 = callPackage ~/.nixpkgs/generic-deriving-1.6.3.nix {} ;
                 text_1_1_1_3 = callPackage ~/.nixpkgs/text-1.1.1.3.nix {} ;
                 lens_3_10_3 = callPackage ~/.nixpkgs/lens-3.10.3.nix {
                    genericDeriving = genericDeriving_1_6_3 ;
                    text = text_1_1_1_3 ;
                 } ;
                 # prettyCompact = callPackage ./local/pretty-compact.nix {};
               } ;
     }) ;
  } ;

}
