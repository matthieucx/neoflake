_: {
  imports = [
    ./binds.nix
    ./general.nix
    ./style
    ./languages
    ./notes
    ./mini.nix
    ./snacks.nix
  ];

  vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;
  };
}
