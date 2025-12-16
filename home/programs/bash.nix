{ pkgs, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      nix-switch = "nix-on-droid switch --flake ~/.config/nix-on-droid";
      nix-rollback = "nix-on-droid rollback";
      nix-generations = "nix-on-droid generations";
      flake-update = "nix flake update";
    };

    bashrcExtra = "
    export DISPLAY=:1  
    ";
  };
}
