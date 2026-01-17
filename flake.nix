{
  description = "My superb Neovim flake, Neoflake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    nvf,
    ...
  }: let
    inherit (nixpkgs) lib;
    systems = [
      "x86_64-linux"
      "aarch64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ];

    forAllSystems = lib.genAttrs systems;
    configModule = import ./config;
  in {
    packages = forAllSystems (system: {
      neovim =
        (nvf.lib.neovimConfiguration {
          modules = [configModule];
          pkgs = import nixpkgs {inherit system;};
        })
        .neovim;
    });

    devShells = forAllSystems (system: {
      default = import ./devshell.nix {
        pkgs = import nixpkgs {inherit system;};
      };
    });
  };
}
