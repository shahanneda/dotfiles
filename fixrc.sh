ln -s -f ~/dotfiles/.zshrc ~/.zshrc
ln -s -f ~/dotfiles/.vimrc ~/.vimrc
ln -s -f ~/dotfiles/.tmux.conf ~/.tmux.conf
#// have to run tmux, then Cntrl+B :source-file ~/.tmux.conf

# To setup vim:
# Install Plug
#/ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#
#   Run :PlugInstall in vim
#
#
# To setup fish:
# $ brew install fish ​
# $ fish
# $ fish_add_path /opt/homebrew/bin
# $ echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
# $ chsh -s /opt/homebrew/bin/fish

#
