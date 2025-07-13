_ :
{
  vim.notes.neorg = {
    # TODO: Temp, see https://github.com/NotAShelf/nvf/issues/955
    enable = false;
    setupOpts = {
      load."core.defaults".enable = true;
      integrations.neorg.downloadRemoteImages = true;
    };
    treesitter.enable = true;
  };
}
