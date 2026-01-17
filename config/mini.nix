{lib, ...}: {
  vim = {
    # https://github.com/echasnovski/mini.nvim?tab=readme-ov-file#modules
    mini = {
      # Text
      align.enable = true;
      comment.enable = true;
      move.enable = true;
      operators.enable = true;
      pairs.enable = true;
      snippets.enable = true;
      splitjoin.enable = true;
      surround.enable = true;
      # General workflow
      basics.enable = true;
      bracketed.enable = true;
      diff.enable = true;
      files.enable = true;
      git.enable = true;
      jump2d.enable = true;
      # Appearance
      hipatterns = {
        enable = true;
        setupOpts.highlighters = let
          mkPattern = pattern: "%f[%w]()${pattern}()%f[%W]";
          mkHi = pattern: group: {
            inherit group;
            pattern = mkPattern pattern;
          };
        in {
          todo = mkHi "TODO" "MiniHipatternsTodo";
          hack = mkHi "HACK" "MiniHipatternsHack";
          note = mkHi "NOTE" "MiniHipatternsNote";
          fixme = mkHi "FIXME" "MiniHipatternsFixme";
          hex_color = lib.generators.mkLuaInline ''require("mini.hipatterns").gen_highlighter.hex_color()'';
        };
      };
      icons.enable = true;
      indentscope.enable = true;
      notify.enable = true;
      starter.enable = true;
      statusline.enable = true;
      tabline.enable = true;
      trailspace.enable = true;
    };
  };
}
