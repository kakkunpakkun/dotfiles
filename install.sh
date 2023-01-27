#!/bin/bash -ux
SCRIPT_DIR=$(cd $(dirname $0); pwd)

echo "start setup..."

echo "install rust..."
curl https://sh.rustup.rs -sSf | sh -s -- -y
source "$HOME/.cargo/env"
cargo install exa

echo "install fisher..."
fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"

echo "synbolic links..."
ln -s ${SCRIPT_DIR}/.gitconfig ${HOME}/.gitconfig
ln -s ${SCRIPT_DIR}/.config/fish/config.fish ${HOME}/.config/fish/config.fish
rm ${HOME}/.config/fish/fish_plugins
ln -s ${SCRIPT_DIR}/.config/fish/fish_plugins ${HOME}/.config/fish/fish_plugins

echo "done!"
