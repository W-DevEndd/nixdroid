{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    i3
    i3status
    dmenu
    xfce.xfce4-terminal
    xorg.xrdb
  ];
}
