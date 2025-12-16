{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "W. Dev Endd";
    userEmail = "W-DevEndd@github.com";
    extraConfig = {
      init.defaultBranch = "main";
      push.autoSetupRemote = true; # Example: automatically set upstream for pushed branches
    };
    aliases = {
      ci = "commit";
      co = "checkout";
      s = "status";
    };
    lfs.enable = true;
  };

}
