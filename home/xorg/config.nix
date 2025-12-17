{ pkgs, config, lib, ... }:

{
  config.home.file.".Xresources".text = "Xft.dpi: 168
";

  imports = [
    ./i3wm/config.nix
  ];
}
