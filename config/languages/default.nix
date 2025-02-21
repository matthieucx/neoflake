{ pkgs, ... }:
{
  vim = {
    autocomplete.blink-cmp = {
      enable = true;
      setupOpts.signature.enabled = true;
    };
    lsp = {
      formatOnSave = true;
      trouble.enable = true;
      lspkind.enable = true;
      lsplines.enable = true; # https://git.sr.ht/~whynothugo/lsp_lines.nvim
      otter-nvim.enable = true;
    };

    debugger.nvim-dap = {
      enable = true;
      ui.enable = true;
    };

    treesitter = {
      enable = true;
      grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        beancount
        ledger
        dockerfile
        toml
        yaml
        json
        json5
        jsonc
      ];
    };
    languages = {
      # Options applied to all languages
      enableLSP = true;
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;
      enableDAP = true;

      # Languages
      nix = {
        enable = true;
        format.type = "alejandra";
        extraDiagnostics.types = ["statix" "deadnix"];
        lsp.server = "nixd";
      };
      markdown = {
        enable = true;
        lsp.enable = false;
        extensions.render-markdown-nvim.enable = true;
      };
      python = {
        enable = true;
        format.type = "ruff";
        lsp.server = "basedpyright";
      };
      rust = {
        enable = true;
        crates.enable = true;
      };
      typst = {
        enable = true;
        extensions.typst-preview-nvim.enable = true;
      };
      html.enable = true;
      css.enable = true;
      lua.enable = true;
      };
    };
}
