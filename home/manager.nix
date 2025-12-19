{ pkgs, config, lib, ... }:

{
  system.stateVersion = "24.05";

  home-manager.config =
    { pkgs, ... }:
    {
      home.stateVersion = "24.05";

      # insert home-manager config
      imports = [
        catppuccin.homeModules.catppuccin
        ./programs.nix
        # ./dotfiles.nix
      ];

      home.packages = [
        pkgs.fastfetch
      ];
    };
}
