{ pkgs, catppuccin, ... }:

{
  system.stateVersion = "24.05";

  imports = [
    ./home/manager.nix
    ./home/themes.nix
    ./modules/config.nix
  ];

  time.timeZone = "Asia/Ho_Chi_Minh";
}
