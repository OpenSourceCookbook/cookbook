let
  pkgs = import <nixpkgs> {};
  
  jobs = rec {
    build = pkgs.callPackages ./. {}; # {system ? currentSystem }:
      # let pkgs = import <nixpkgs> { inherit system; }; in
      # pkgs.releaseTools.nixBuild {
      #   name = "cookbook";
      #   src = jobs.tarball;
      # };
  };
in
jobs
