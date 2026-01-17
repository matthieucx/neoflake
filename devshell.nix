{pkgs, ...}:
pkgs.mkShellNoCC {
  packages = builtins.attrValues {
    inherit
      (pkgs)
      # Nix
      nixd
      alejandra
      statix
      deadnix
      # Tools
      cargo-edit
      ;
  };
}
