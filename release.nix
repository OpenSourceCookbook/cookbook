let
  pkgs = import <nixpkgs> {};
  
  jobs = rec {
    build = pkgs.callPackages ./. {};
  };
in
jobs
