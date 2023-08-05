git config --global core.editor "vim"
sudo dnf install konsole
sudo dnf install fish
chsh fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/nvm.fish
nvm install latest
nvm use latest
