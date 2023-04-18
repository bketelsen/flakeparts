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
    userName = flake.config.people.users.${config.home.username}.name;
    userEmail = flake.config.people.users.${config.home.username}.email;
    extraConfig = {
      feature.manyFiles = true;
      init.defaultBranch = "main";
      gpg.format = "ssh";
    };
    signing = {
      key = flake.config.people.users.${config.home.username}.sshPrivateKey;
      signByDefault = true;
    };
    lfs.enable = true;
    ignores = [ ".direnv" "result" ];
  };
}
