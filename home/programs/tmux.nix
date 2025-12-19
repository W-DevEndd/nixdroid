{ pkgs, ... }:	

{
  programs.tmux = {
    enable = true;
    mouse = true;
    extraConfig = ''
      unbind C-b
      set -g prefix C-a
      bind C-a send-prefix
    '';
  };
}
