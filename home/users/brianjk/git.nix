{ pkgs, lib, config, ... }:
{
   programs.git = {
    enable = true;
    package = pkgs.gitAndTools.gitFull;
    aliases = {
      pushall = "!git remote | xargs -L1 git push --all";
      graph = "log --decorate --oneline --graph";
      add-nowhitespace = "!git diff -U0 -w --no-color | git apply --cached --ignore-whitespace --unidiff-zero -";
    };
    userName = "Brian Ketelsen";
    userEmail = "brianjk@amazon.com";
    extraConfig = {
      feature.manyFiles = true;
      init.defaultBranch = "main";
      gpg.format = "ssh";
    };
    signing = {
      key = "~/.ssh/id_rsa";
      signByDefault = true;
    };
    lfs.enable = true;
    ignores = [ ".direnv" "result" ];
  };
}
