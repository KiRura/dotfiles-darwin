{ pkgs, ... }:

{
  home.username = "kirura";
  home.homeDirectory = "/Users/kirura";
  home.stateVersion = "25.11";

  imports = [
    ./git.nix
    ./fonts.nix
  ];

  home.packages = [
    pkgs.nil
    pkgs.nixd
    pkgs.nixfmt
  ];

  home.file = {
  };

  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #  /etc/profiles/per-user/kirura/etc/profile.d/hm-session-vars.sh
  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
