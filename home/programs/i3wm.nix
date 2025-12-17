{ pkgs, ... }:

{
  home.packages = with pkgs; [
    i3
    i3status
    dmenu
    xterm
  ];
}
