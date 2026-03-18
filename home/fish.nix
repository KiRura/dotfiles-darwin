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
      switchhome = "home-manager switch --flake .";
    };
    shellInit = "source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish && source ~/.nix-profile/etc/profile.d/hm-session-vars.fish";
  };
}
