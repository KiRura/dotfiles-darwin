{ ... }:
{
  programs.fish = {
    enable = true;

    shellAliases = {
      ls = "lsd";
    };
    shellAbbrs = {
      ffmpeg = "ffmpeg -hwaccel videotoolbox";
      disablesleep = "sudo pmset -b sleep 0; sudo pmset -b disablesleep 1";
      enablesleep = "sudo pmset -b disablesleep 0";
    };
  };
}
