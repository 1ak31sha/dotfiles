pmset sleep 0 #never sleep
pmset displaysleep 0
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
defaults write com.apple.dock orientation left
killall Dock
defaults write com.apple.finder AppleShowAllFiles YES
defaults delete com.apple.dock persistent-apps
defaults delete com.apple.dock persistent-others
sudo xcode-select --install
