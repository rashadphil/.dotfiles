# install nix
# curl -L https://nixos.org/nix/install | sh

# source nix
# . ~/.nix-profile/etc/profile.d/nix.sh

# install packages
# nix-env -iA \
# 	nixpkgs.zsh \
# 	nixpkgs.git \
# 	nixpkgs.neovim \
# 	nixpkgs.stow \
# 	nixpkgs.fzf \
# 	nixpkgs.ripgrep \
# 	nixpkgs.bat \

# stow dotfiles
stow nvim
stow zsh

# add zsh as a login shell
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER

# install neovim plugins
#nvim --headless +PlugInstall +qall
