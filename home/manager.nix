{ pkgs, config, lib, catppuccin, inputs, ... }:

{
  system.stateVersion = "24.05";

  home-manager = {

    config = {
      home.stateVersion = "24.05";

      imports = [
        ./programs.nix
        # ./themes.nix
      ];


      home.packages = [
        pkgs.fastfetch
      ];
    };
  };
}
