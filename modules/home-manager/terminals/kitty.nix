{ pkgs, inputs, config, ... }:

{
  programs.kitty = {
    enable = true;
    theme  = "Catppuccin-Macchiato";
    extraConfig = ''
      font_size 16.0
      font_family FantasqueSansM Nerd Font
      background_opacity 0.85
      enable_audio_bell no
      confirm_os_window_close 0
      window_margin_width 0
    '';
  };
}
