{ ... }:
{
  programs.zed-editor = {
    enable = true;
    extensions = [
      "html"
      "nix"
      "nvim-nightfox"
      "svelte"
    ];
    userSettings = {
      scrollbar.show = "always";
      disable_ai = true;
      ui_font_features.liga = true;
      buffer_font_family = "Google Sans Code";
      buffer_font_fallbacks = [
        "IBM Plex Sans JP"
        "Symbols Nerd Font"
      ];
      buffer_font_features.liga = true;
      theme = {
        mode = "system";
        light = "One Light";
        dark = "Carbonfox - opaque";
      };
      tab_size = 3;
    };
  };
}
