{ pkgs, ... }:

{
  home.username = "kirura";
  home.homeDirectory = "/Users/kirura";
  home.stateVersion = "25.11";

  imports = [
    ./git.nix
    ./fonts.nix
  ];

  home.packages = with pkgs; [
    nil
    nixd
    nixfmt
    fish
  ];

  home.file = {
  };

  xdg.configFile = {
    "fish/config.fish".source = ./file/fish/config.fish;
  };

  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #  /etc/profiles/per-user/kirura/etc/profile.d/hm-session-vars.sh
  home.sessionVariables = {
    LANG = "ja_JP.UTF-8";
    SUDO_EDITOR = "zed --wait";
    EDITOR = "zed --wait";
  };

  programs.home-manager.enable = true;
}
