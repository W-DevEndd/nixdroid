{ pkgs, ... }:

{
  endd = {
    createHome = true;
        extraGroups = [
      "wheel"
    ];
    # home = "/data/data/com.termux.nix/files/home/endd/";
  }
}
