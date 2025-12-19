{ pkgs, ... }:

{
  services = {
    openssh = {
      enable = true;
      ports = [ 8022 ];
    };
  };
}
