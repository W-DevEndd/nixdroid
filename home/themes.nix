{ catppuccin,... }:

{
  imports = [
    catppuccin.homeManagerModules.catppuccin
  ];

  catppuccin.gtk = {
    enable = true;
    flavor = "mocha";
    accent = "red";
  };

  catppuccin.xfce4-terminal = {
    enable = true;
    flavor = "mocha";
  };
}
