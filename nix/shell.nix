{ pkgs, agda2hs-hs }:
pkgs.haskellPackages.shellFor {
  packages = p: [ agda2hs-hs ];
  buildInputs = with pkgs.haskellPackages; [
    cabal-install
    cabal2nix
    haskell-language-server
    pkgs.agda
  ];
}
