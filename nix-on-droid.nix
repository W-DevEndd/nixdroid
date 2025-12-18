{ config, lib, pkgs, catppuccin, ... }:

{
  environment.etcBackupExtension = ".bak";

  # Read the changelog before changing this value
  system.stateVersion = "24.05";

  imports = [
    ./home/manager.nix
    # catppuccin.homeModules.catppuccin
    ./modules/config.nix

  ];

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  # time.timeZone = "Asia/Saigon";
}
