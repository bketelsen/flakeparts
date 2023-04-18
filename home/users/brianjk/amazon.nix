{ inputs, pkgs, lib, config, ... }: {
  imports = [
    ../../global
    ./git.nix
    ../../bling/high
    ../fleek
  ];
  colorscheme = inputs.nix-colors.colorSchemes.dracula;
  home = {
    username = lib.mkDefault "brianjk";
    homeDirectory = lib.mkDefault "/Users/${config.home.username}";
  };

}
