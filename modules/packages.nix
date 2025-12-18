{ pkgs, ... }:

{
  environment.packages = with pkgs; [
    # Editor
    vim

    # Theme
    # (catppuccin-gtk.overide {
    #   accents = [ "red" ];
    #   variant = "mocha";
    # })

    # CLI
    procps
    killall
    diffutils
    findutils
    utillinux
    tzdata
    hostname
    man
    gnugrep
    gnupg
    gnused
    gnutar
    bzip2
    gzip
    xz
    zip
    unzip
  ];
}
