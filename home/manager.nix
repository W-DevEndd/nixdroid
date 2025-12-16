{ pkgs, ... }:

{
  # Read Nix-on-Droid changelog before changing this value
  system.stateVersion = "25.05";

  # insert Nix-on-Droid config

  home-manager.config =
    { pkgs, ... }:
    {
      # Read home-manager changelog before changing this value
      home.stateVersion = "25.05";

      programs.git = {
        enable = true;
        userName = "W. Dev Endd";
        userEmail = "W-DevEndd@github.com";
        extraConfig = {
          init.defaultBranch = "main";
          push.autoSetupRemote = true; # Example: automatically set upstream for pushed branches
        };
        aliases = {
          ci = "commit";
          co = "checkout";
          s = "status";
        };
        lfs.enable = true;
      };

      # insert home-manager config
    };

  # or if you have a separate home.nix already present:
  # home-manager.config = ./home.nix;
}
