{ pkgs, lib, ... }:

{
  imports = [
    ./programs/bash.nix
    ./programs/git.nix
    ./programs/i3wm.nix
  ];
}
