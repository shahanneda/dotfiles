git config --global core.editor "vim"
git config --global user.name "Shahan Neda"
git config --global user.email shahan.neda@gmail.com

sudo dnf install konsole
sudo dnf install fish
sudo dnf install screenfetch
sudo dnf install gnome-shell-extension-pop-shell xprop
chsh fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/nvm.fish
nvm install latest
nvm use latest
mkdir ~/Documents/projects
cd ~/Documents
git clone git@github.com:shahanneda/Vault.git

