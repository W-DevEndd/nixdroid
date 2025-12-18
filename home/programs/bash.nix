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

    initExtra = ''
      PS1=\"󱄅 \\w  \"
      export DISPLAY=:1

      git-commit ()
      {
          git add .
          git commit -m "$1"
      }

      git-push ()
      {
          git-commit $@
          git push
      }
    '';
  };
}
