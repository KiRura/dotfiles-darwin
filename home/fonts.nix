{ pkgs, ... }:
{
  home.packages = with pkgs; [
    googlesans-code
    (ibm-plex.override { families = [ "sans-jp" ]; })
    noto-fonts-cjk-sans
    (nerd-fonts.symbols-only)
    inter
  ];
}
