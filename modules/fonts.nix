{ pkgs, ... }:

{
  packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    font-awesome

    (nerdfonts.override { 
      fonts = [ "JetBrainsMono" ]; 
    })

    # 25.05
    # nerd-fonts.jetbrains-mono
    # nerd-fonts.fira-code
  ];

    # fontconfig = {
    #   enable = true;
    #   defaultFonts = {
    #     serif = [ "Noto Serif" ];
    #     sansSerif = [ "Noto Sans" ];
    #     monospace = [ "JetBrainsMono Nerd Font" ];
    #   };
    # };
    #
    # fontDir.enable = true;
    terminal.font = "${pkgs.nerdfonts.override { fonts = ["JetBrainsMono"]; }}/share/fonts/truetype/NerdFonts/JetBrainsMonoNerdFont-Regular.ttf";
}
