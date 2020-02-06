{ nixpkgs ? import <nixpkgs>{} }:

with nixpkgs;

stdenv.mkDerivation rec {
  name = "cookbook";
  src =  ./.;
  buildInputs = [
    git
    (texlive.combine {
      inherit (texlive)
        scheme-small
        latexmk
        ifmtarg
        booktabs
        units
        changepage
        hyperxmp
        doclicense
        xifthen
        etoolbox
        mfirstuc
        datatool
        glossaries
        textcase
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
