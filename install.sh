############################################################
# first install xcode and homebrew
############################################################
xcode-select -–install;

# Now we'll need to install Homebrew in order to install packages
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 

############################################################
# Next install brew dependencies
############################################################

brew install bat \
    dataframehq/tap/whale \
    exa \
    fzf \
    jenv \
    jq  \
    neovim \
    peco \
    pyenv \
    the_silver_searcher \
    zoxide

############################################################
# Copy the nvim configuration file
############################################################

mkdir -p ~/.config;
cp -r .config/nvim ~/.config/.;

############################################################
# Install nvm and node for nvim-coc autocompletion
############################################################

ENV NODE_VERSION=16.13.0;

brew uninstall --force node
brew uninstall --ignore-dependencies node

brew update
brew install nvm

mkdir -p ~/.nvm
source $(brew --prefix nvm)/nvm.sh

nvm install ${NODE_VERSION};
nvm use v${NODE_VERSION};
nvm alias default v${NODE_VERSION};

############################################################
# Set up local python environment
############################################################

pyenv install 3.7.13
pyenv global 3.7.13

############################################################
# Set up local zsh environment
############################################################

# 1. Install oh-my-zsh as a zshell plugin manager
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 2.Install custom zsh plugins and themes
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
git clone https://github.com/jimeh/zsh-peco-history.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-peco-history
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# 3. Backup .zshrc and replace it with new one
mv ~/.zshrc ~/.zshrc_backup;
mv .zshrc ~/.zshrc;

# 4. Copy custom shell functions written
cp -r .my-zsh-functions ~/.
