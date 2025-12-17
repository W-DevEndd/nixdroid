{ conig, lib, pkgs, ... }:

{
  config.xresources.extraConfig = "Xft.dpi: 168";
  home.packages = with pkgs; [
    i3
    i3status
    dmenu
    xterm
    xorg.xrdb
  ];

  xsession.windowManager.i3.config = {
    startup = [
      { command = "${lib.getExe pkgs.xorg.xrdb} -merge ${config.xresources.path}"; }
    ];
  };
}
