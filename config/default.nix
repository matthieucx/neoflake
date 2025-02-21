_ :
{
  imports = [
    ./general.nix
    ./style
    ./languages
    ./notes
    ./mini.nix
  ];

  vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;
  };
}
