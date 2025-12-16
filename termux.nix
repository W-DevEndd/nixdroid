( config, lib, pkgs, ... }:

{
  home.activation = {
    # copyFont = let
    #   font_src = "${pkgs.nerd-fonts.fira-code}";
    #   font_dst = "${config.home.homeDirectory}/.termux/font.ttf";
    # in lib.hm.dag.entryAfter ["writeBoundary"] ''
    # # Only copy if the file is missing or different
    # test ! -e "${font_dst}" || test $(sha1sum "${font_src}"|cut -d' ' -f1 ) != $(sha1sum "${font_dst}" |cut -d' ' -f1) &&
    # $DRY_RUN_CMD install $VERBOSE_ARG -D "${font_src}" "${font_dst}"
    #   '';
  };
}
