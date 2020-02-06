#!/bin/sh

export TEXINPUTS="./texmf/:${TEXINPUTS}"

lualatex document
makeglossaries document
makeindex document
lualatex document
lualatex document
