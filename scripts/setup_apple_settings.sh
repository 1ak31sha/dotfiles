sudo pmset sleep 0 #never sleep
sudo pmset displaysleep 0
# defaults write com.apple.screencapture location '~/Pictures/Screenshots' - doesnt work as of Catalina - must do it through Screenshot.app
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
defaults write NSGlobalDomain InitialKeyRepeat -int 12
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write com.google.Chrome NSQuitAlwaysKeepsWindows -bool false
defaults write com.apple.Safari NSQuitAlwaysKeepsWindows -bool false
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

