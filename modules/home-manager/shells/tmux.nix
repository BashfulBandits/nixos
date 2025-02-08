{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    baseIndex = 1;
    mouse = true;
    prefix = "C-Space"; 

    plugins = with pkgs.tmuxPlugins; [
      #tmuxPlugins.tpm;
      sensible
      vim-tmux-navigator
      catppuccin
      yank
    ];

    extraConfig = ''
      bind h split-window -h -c "#{pane_current_path}"
      bind k split-window -v -c "#{pane_current_path}"
      bind z confirm-before -p "kill-window? (y/n)" kill-window
    '';
  };
}
