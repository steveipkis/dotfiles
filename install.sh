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
# Set up local zsh environment
############################################################

pyenv install 3.7.13
pyenv global 3.7.13

############################################################
# Set up local zsh environment
############################################################

# 1. Install oh-my-zsh as a zshell plugin manager
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 2. Copy over the custom oh my-zsh-configurations
mkdir -p ~/.oh-my-zsh
cp -r .oh-my-zsh/custom ~/.oh-my-zsh/.;

# 3. Backup .zshrc and replace it with new one
mv ~/.zshrc ~/.zshrc_backup;
mv .zshrc ~/.zshrc;

# 4. Copy custom shell functions written
cp -r .my-zsh-functions ~/.
