{ pkgs, misc, ... }: {
  # User Customizations
  # Generated by Fleek - do not modify

  home.packages = with pkgs; [
    go
    gcc
    nodejs
    yarn
    rustup
    vhs
    dive
    virt-manager
    nixpkgs-fmt
  ];
}



