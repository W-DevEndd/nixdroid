{ pkgs, ... }:

{
  environment.packages = with pkgs; [
    # Editor
    vim

    # Theme
    (catppuccin-gtk.override {
      accents = [ "red" ];
      variant = "mocha";
    })

    # CLI
    procps
    which
    killall
    ncurses
    # diffutils
    # findutils
    # utillinux
    # tzdata
    hostname
    # man
    gnugrep
    # gnupg
    # gnused
    # gnutar
    # bzip2
    # gzip
    # xz
    # zip
    # unzip
    openssh
    shadow

    peaclock
  ];
}
