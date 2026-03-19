{ ... }:
{
  programs.ghostty = {
    enable = true;
    settings = {
      font-family = "Guguru Sans Code Console 35NF";
      font-size = 14;
      font-feature = "+liga";
      theme = "light:One Double Light,dark:One Double Dark";
      maximize = true;
    };
    enableFishIntegration = true;
  };
}
