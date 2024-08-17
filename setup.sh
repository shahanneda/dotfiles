git config --global core.editor "vim"
git config --global user.name "Shahan Neda"
git config --global user.email shahan.neda@gmail.com


curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish && fish && fisher install jorgebucaran/fisher
fisher install jorgebucaran/nvm.fish
nvm install latest
nvm use latest
mkdir ~/Documents/projects
cd ~/Documents
git clone git@github.com:shahanneda/Vault.git
cd ~/Documents/projects
git clone git@github.com:shahanneda/syncer.git

git config pull.rebase false --global

