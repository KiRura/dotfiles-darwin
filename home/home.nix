{ pkgs, ... }:

{
  home.username = "kirura";
  home.homeDirectory = "/Users/kirura";
  home.stateVersion = "25.11";

  imports = [
    ./git.nix
    ./fish.nix
    ./fonts.nix
    ./nvim.nix
  ];

  home.packages = with pkgs; [
    nil
    nixd
    nixfmt

    lsd
    bat
    yt-dlp
    gh
    tmux
    git-credential-manager

    bottom
    btop

    ffmpeg

    zulu
    python3
    nodejs
    node-gyp
    pnpm
    deno
    rustup

    nmap
    iproute2mac
  ];

  home.file = {
  };

  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #  /etc/profiles/per-user/kirura/etc/profile.d/hm-session-vars.sh
  home.sessionVariables = {
    LANG = "ja_JP.UTF-8";
    SUDO_EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
