_: {
  vim.spellcheck = {
    enable = true;
    languages = ["fr" "en"];
    # https://notashelf.github.io/nvf/options.html#opt-vim.spellcheck.ignoredFiletypes
    ignoredFiletypes = [
      "toggleterm"
      "gitcommit"
    ];
    programmingWordlist.enable = true;
  };
}
