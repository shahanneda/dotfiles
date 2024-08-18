# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# Key repeat (have to log out and log back in)
defaults write -g ApplePressAndHoldEnabled -bool false

# Setup showing hidden files in finder
defaults write com.apple.finder AppleShowAllFiles YES
