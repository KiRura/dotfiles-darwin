{ ... }:
{
  programs.zed-editor = {
    enabled = true;
    extensions = [
      "html"
      "nix"
      "carbonfox"
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
        dark = "Carbonfox";
      };
      tab_size = 3;
    };
  };
}
