{ pkgs, ... }:

{
  imports = [
    ./programs/git.nix
    ./programs/bash.nix
  ];
}
