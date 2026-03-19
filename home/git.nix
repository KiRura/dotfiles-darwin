{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "KiRura";
        email = "57588049+KiRura@users.noreply.github.com";
      };
      credential = {
        credentialStore = "keychain";
        helper = "/Users/kirura/.nix-profile/bin/git-credential-manager";
      };
    };
  };
}
