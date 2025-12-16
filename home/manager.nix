{ pkgs, configs, ... }:

{
  # Read Nix-on-Droid changelog before changing this value
  system.stateVersion = "24.05";

  # insert Nix-on-Droid config

  home-manager.config =
    { pkgs, ... }:
    {
      # Read home-manager changelog before changing this value
      home.stateVersion = "24.05";

      # insert home-manager config
      imports = [
        ./programs.nix
      ];

      home.packages = [
        pkgs.fastfetch
      ];
    };

  # or if you have a separate home.nix already present:
  # home-manager.config = ./home.nix;
}
