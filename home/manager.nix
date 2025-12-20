{ pkgs, config, lib, catppuccin, inputs, ... }:

{
  system.stateVersion = "24.05";

  home-manager = {

    imports = [
      ./programs.nix
      ./themes.nix
    ];

    config = {
      home.stateVersion = "24.05";

      home.packages = [
        pkgs.fastfetch
      ];
    };
  };
}
