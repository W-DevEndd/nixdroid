{ pkgs, ... }:

{
  imports = [
    ./programs/bash.nix
    ./programs/git.nix
    ./programs/neofetch.nix
  ];
}
