{ pkgs, ... }:

{
  environment.packages = with pkgs; [

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

    vim
  ];
}
