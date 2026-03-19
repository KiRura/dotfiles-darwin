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
    shellInit = ''
      source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
      source ~/.nix-profile/etc/profile.d/hm-session-vars.fish

      if test -d (brew --prefix)"/share/fish/completions"
          set -p fish_complete_path (brew --prefix)/share/fish/completions
      end

      if test -d (brew --prefix)"/share/fish/vendor_completions.d"
          set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
      end
    '';
  };
}
