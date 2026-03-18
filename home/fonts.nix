{ pkgs, ... }:
{
  home.packages = with pkgs; [
    googlesans-code
    noto-fonts-cjk-sans
    (nerd-fonts.symbols-only)
    inter
  ];
}
