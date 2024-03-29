#!/bin/fish 
set SCRIPT_DIR /workspaces/.codespaces/.persistedshare/dotfiles

echo "start setup..."

echo "install rust..."
curl https://sh.rustup.rs -sSf | sh -s -- -y
set -U fish_user_paths $fish_user_paths $HOME/.cargo/bin
cargo install exa

echo "install fisher..."
fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"

echo "synbolic links..."
ln -s {$SCRIPT_DIR}/.gitconfig {$HOME}/.gitconfig
ln -s {$SCRIPT_DIR}/.config/fish/config.fish {$HOME}/.config/fish/config.fish
rm {$HOME}/.config/fish/fish_plugins
ln -s {$SCRIPT_DIR}/.config/fish/fish_plugins {$HOME}/.config/fish/fish_plugins

echo "done!"
