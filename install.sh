#!/bin/bash -ux
SCRIPT_DIR=$(cd $(dirname $0); pwd)

echo "start setup..."

ln -s ${SCRIPT_DIR}/.gitconfig ${HOME}/.gitconfig
ln -s ${SCRIPT_DIR}/.config/fish/config.fish ${HOME}/.config/fish/config.fish
ln -s ${SCRIPT_DIR}/.config/fish/fish_plugins ${HOME}/.config/fish/fish_plugins

echo "done!"
