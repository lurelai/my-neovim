#!/bin/bash

NEOVIM_LINK_PATH="$HOME/.local/share/nvim/site/pack"
NEOVIM_SITE_PATH="$HOME/.local/share/nvim/site/"
CURRENTDIR="$(dirname $0)"

mkdir -p $NEOVIM_SITE_PATH

ln -fsr ${CURRENTDIR}/pack $NEOVIM_LINK_PATH
unlink ${CURRENTDIR}/pack/pack

exit 0

