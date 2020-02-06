{ nixpkgs ? import <nixpkgs>{} }:

with nixpkgs;

stdenv.mkDerivation rec {
  name = "cookbook";
  src =  ./.;
  buildInputs = [ texlive.combined.scheme-full ];

  buildPhase = "make";

  meta = with lib; {
    description = "Open Source Cookbook";
    license = licenses.cc-by-sa-40;
    author = "Samuel Flint <swflint@flintfam.org>";
  };
}
