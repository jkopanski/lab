args: import (builtins.fetchTarball {
  name   = "lab-nixpkgs";
  # 23.11 as of 24.01
  url    = "https://github.com/nixos/nixpkgs/archive/6737bac6ac4a5314f34d2c736360a23182c09f17.tar.gz";
  sha256 = "sha256:1wsjypr389qfxmp9kd0d3sn21vrc0h3j9yk132iwwwksd748b6ln";
}) ({
  overlays = [
    (import ./agda-packages.nix)
    (import ./haskell-packages.nix)
  ];
} // args)
