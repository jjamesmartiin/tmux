# tmux
{ config, pkgs, ...}:
let
  link = config.lib.file.mkOutOfStoreSymlink;

in
{
  home.packages = [
    pkgs.tmux
  ];

  # programs.tmux = {
  #   # enable = true
  #   plugins = with pkgs.tmuxPlugins; [
  #   ];
  # };

  home.file.".config/tmux/tmux.conf" = { 
    enable = true;
    source = link ./tmux.conf;
  };

  home.file.".config/tmux/conf.d" = {
    enable = true;
    source = link ./conf.d;
  };

}
