{ inputs, pkgs, lib, config, ... }: {
  imports = [
    ../../global
    ./git.nix
    ../../bling/high
    ../fleek

  ];
  colorscheme = inputs.nix-colors.colorSchemes.dracula;
  home = {
    username = lib.mkDefault "bjk";
    homeDirectory = lib.mkDefault "/home/${config.home.username}";
  };


}
