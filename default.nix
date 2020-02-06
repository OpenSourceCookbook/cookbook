{ nixpkgs ? import <nixpkgs>{} }:

with nixpkgs;

stdenv.mkDerivation rec {
  name = "cookbook";
  src =  ./.;
  buildInputs = [
    git
    (texlive.combine {
      inherit (texlive)
        # Basic Packages
        scheme-small

        # Specifically used
        latexmk
        booktabs
        units
        changepage
        hyperxmp
        doclicense
        glossaries


        # Un-handled dependencies
        ifmtarg
        xifthen
        xfor
        substr
        etoolbox
        mfirstuc
        datatool
        textcase
        csquotes
        ccicons
      ;
    })
  ];

  buildPhase = "make";

  meta = with lib; {
    description = "Open Source Cookbook";
    license = licenses.cc-by-sa-40;
    author = "Samuel Flint <swflint@flintfam.org>";
  };
}
