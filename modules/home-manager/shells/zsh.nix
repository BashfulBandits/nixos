{ inputs, pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    shellAliases = {
      cat  = "bat";
      ls   = "eza --icons";
      lsa  = "eza -a --icons";
      lst  = "eza --icons --tree";
      lsta = "eza --icons --tree -a";

      c = "clear";

      # zoxide 
      cd = "z";

      # Change ~/nixos#"default" to whatever host you are using
      osr  = "sudo nixos-rebuild switch --flake ~/nixos#default"; 
    };

    defaultKeymap = "emacs";

    initExtraBeforeCompInit = ''

    '';

    initExtra = ''
      eval "$(zoxide init zsh)"
      eval "$(oh-my-posh init zsh --config $HOME/dotfiles/.config/ohmyposh/default.toml)"
    '';

    #zplug = {
      #enable = true;
      #plugins = [
        #{ name = "romkatv/powerlevel10k"; tags = [ as:theme depth:1 ];}
      #];
    #};
  };
}
