{ pkgs, config, lib, catppuccin, ... }:

{
  system.stateVersion = "24.05";

  home-manager.config =
    { pkgs, ... }:
    {
      home.stateVersion = "24.05";

      # insert home-manager config
      imports = [
        ./programs.nix
        ./themes.nix
      ];

      home.packages = [
        pkgs.fastfetch
      ];
    };
}
