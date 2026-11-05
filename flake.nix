{
  description = "Flurry: a software shop for NixOS (nixpkgs via Nix or Lix, Flathub, Snap)";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" ];
      forAll = f: nixpkgs.lib.genAttrs systems (s: f nixpkgs.legacyPackages.${s});
    in {
      packages = forAll (pkgs: rec { flurry = pkgs.callPackage ./package.nix { }; default = flurry; });
      overlays.default = final: _: { flurry = final.callPackage ./package.nix { }; };
      devShells = forAll (pkgs: { default = pkgs.mkShell { inputsFrom = [ self.packages.${pkgs.system}.flurry ]; }; });
    };
}
