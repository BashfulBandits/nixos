{ inputs, pkgs, ... }:
#
{
  #programs.zsh = {
    #enable = true;
    #shellAliases = {
      #cat  = "bat";
#
      #ls   = "eza --icons";
      #lsa  = "eza -a --icons";
      #lst  = "eza --icons --tree";
      #lsta = "eza --icons --tree -a";
#
      ## Change ~/nixos#"default" to whatever host you are using
      #osr  = "sudo nixos-rebuild switch --flake ~/nixos#default"; 
    #};
    #initExtraBeforeCompInit = ''
      ## Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
      ## Initialization code that may require console input (password prompts, [y/n]
      ## confirmations, etc.) must go above this block; everything else may go below.
      #if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; 
      #then
        #source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
      #fi
    #'';
#
    #initExtra = ''
      #eval "$(zoxide init zsh)"
    #'';
    #zplug = {
      #enable = true;
      #plugins = [
        #{ name = "romkatv/powerlevel10k"; tags = [ as:theme depth:1 ];}
      #];
    #};
  #};
}
