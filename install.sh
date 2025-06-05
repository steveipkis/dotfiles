############################################################
# first install xcode and homebrew
############################################################
xcode-select -–install;

# Now we'll need to install Homebrew in order to install packages
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

############################################################
# Set up zsh environment
############################################################

# 1. Install oh-my-zsh as a zshell plugin manager
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 2.Install custom zsh plugins and themes
git clone https://github.com/jimeh/zsh-peco-history.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-peco-history
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

############################################################
# Next install brew dependencies
############################################################

brew install bat \
    eza \
    fzf \
    fd \
    jenv \
    jq  \
    neovim \
    peco \
    pyenv \
    the_silver_searcher \
    yq \
    zoxide

############################################################
# Install GNU bash and add to allowed shells list
############################################################

# https://stackoverflow.com/questions/10574969/how-do-i-install-bash-3-2-25-on-mac-os-x-10-5-8
brew install bash
echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;

############################################################
# Copy the nvim configuration file
############################################################

mkdir -p ~/.config;
cp -r .config/nvim ~/.config/.;

############################################################
# Install nvm and node for nvim-coc autocompletion
############################################################

ENV NODE_VERSION=20.11.1;

brew uninstall --force node
brew uninstall --ignore-dependencies node

brew update
brew install nvm

mkdir -p ~/.nvm
source $(brew --prefix nvm)/nvm.sh

nvm install ${NODE_VERSION};
nvm use v${NODE_VERSION};
nvm alias default v${NODE_VERSION};

npm install -g neovim
npm install -g typescript

############################################################
# Set up local python environment
############################################################

pyenv install 3.11.9
pyenv global 3.11.9

python3 -m pip install --user --upgrade pynvim

############################################################
# Install Terraform
############################################################

# install tfenv to manage terraform versions
brew install tfenv
tfenv install 1.7.3
tfenv use 1.7.3

# install the language server protocol for vim
brew install hashicorp/tap/terraform-ls

############################################################
# Set up Java Environment
############################################################

# Install to manage multiple java versions
brew install jenv
jenv init -

# Install java 11 and link to jenv
brew install openjdk@11
sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
jenv add /Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home/

# Install java8 on arm and link to jenv
brew tap AdoptOpenJDK/openjdk
brew install --cask adoptopenjdk8

jenv global 1.8

# Setup jenv plugin compatibility
jenv enable-plugin export
jenv enable-plugin maven
jenv enable-plugin gradle

############################################################
# Setup scala
############################################################

curl -s "https://get.sdkman.io" | bash
sdk install sbt
sdk install scala 2.12.18

############################################################
# Set up local custom environment
############################################################

# 1. Backup .zshrc and replace it with new one
mv ~/.zshrc ~/.zshrc_backup;
mv .zshrc ~/.zshrc;

# 2. Copy custom shell functions written
cp -r .my-zsh-functions ~/.

############################################################
# Setup VsCode
############################################################

# 1. Enable better navigation
# https://github.com/VSCodeVim/Vim/tree/v1.28.1?tab=readme-ov-file#mac

defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false              # For VS Code
# defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false      # For VS Code Insider
# defaults write com.vscodium ApplePressAndHoldEnabled -bool false                      # For VS Codium
# defaults write com.microsoft.VSCodeExploration ApplePressAndHoldEnabled -bool false   # For VS Codium Exploration users
# defaults delete -g ApplePressAndHoldEnabled                                           # If necessary, reset global default

# Copy over settings
cp .vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
