#!/bin/bash

# Font installation

FONT_PATH="$HOME/.local/share/fonts"

[ ! -d $FONT_PATH ] && mkdir $FONT_PATH
svn checkout https://github.com/ryanoasis/nerd-fonts/trunk/patched-fonts/Iosevka $FONT_PATH/Iosevka
