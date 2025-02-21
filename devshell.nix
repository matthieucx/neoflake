{
  pkgs,
  ...
}:
pkgs.mkShellNoCC {
  packages = with pkgs; [
    # Nix
    nixd
    alejandra
    statix
    deadnix
    # Tools
    cargo-edit
  ];
}
