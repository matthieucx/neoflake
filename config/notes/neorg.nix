_ :
{
  vim.notes.neorg = {
    enable = true;
    setupOpts = {
      load."core.defaults".enable = true;
      integrations.neorg.downloadRemoteImages = true;
    };
    treesitter.enable = true;
  };
}
