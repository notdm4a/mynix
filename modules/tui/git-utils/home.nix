{ data, ... }:
let
  settings = data.options.tui.git-utils or {};
  user = settings.name or {};
  mail = settings.mail or {};
in {
  programs.git = {
    enable = true;
    userName = user;
    userEmail = mail;
  };
}
