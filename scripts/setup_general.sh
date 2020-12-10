curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fisher add jorgebucaran/nvm.fish
fisher add FabioAntunes/fish-nvm
fisher add edc/bass

# this didnt work. using this now |> curl -s https://raw.githubusercontent.com/tophat/yvm/v2.4.3/scripts/install.sh | INSTALL_VERSION="v2.4.3" bash
#fisher add cideM/fish-yvm

curl -s https://raw.githubusercontent.com/tophat/yvm/v2.4.3/scripts/install.sh | INSTALL_VERSION="v2.4.3" bash



# using starship instead
#omf install spacefish



# oh ya
# Color contract analyser
# https://github.com/ThePacielloGroup/CCAe/releases/tag/v3.1.1
