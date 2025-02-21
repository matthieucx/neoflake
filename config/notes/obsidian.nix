_ :
let
  vault_path = "Documents/ObsidianVault";
in {
  vim.notes.obsidian = {
    enable = true;
    setupOpts = {
      workspaces = [
        {
          name = "personal";
          path = "~/${vault_path}";
        }
      ];
      attachments.img_folder = "Attachments";
      daily_notes = {
        folder = "Daily";
        date_format = "%Y-%m-%d";
      };
    };
  };
}
