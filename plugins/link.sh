#!/bin/bash

NEOVIMLINK="$HOME/.local/share/nvim/site/pack"
CURRENTDIR="$(dirname $0)"


ln -fsr ${CURRENTDIR}/pack $NEOVIMLINK
unlink ${CURRENTDIR}/pack/pack

exit 0

