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

    initExtra = "
      PS1=\"\\[\\033[01;32m\\]\\u@\\h\\[\\033[00m\\] \\[\\033[01;34m\\]\\w \$\\[\\033[00m\\]\"
      export DISPLAY=:1  
    ";
  };
}
