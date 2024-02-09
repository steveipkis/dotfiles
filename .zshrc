##########################################################
# General Settings
##########################################################

# On MacOS you may need to set CPPFLAGS="-I/usr/local/include -L/usr/local/lib" before
# running pipenv install --dev for the python-snappy package to be installed
# per https://github.com/andrix/python-snappy#frequently-asked-questions
CPPFLAGS="-I/usr/local/include -L/usr/local/lib"

##########################################################
# OH-MY-ZSH and themes
##########################################################

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

##########################################################
# Plugins and Integrations
##########################################################

## Local Brew installation
export PATH="~/Applications/homebrew/bin:$PATH"

## Local Plugins and Functions Configuration
export FZF_BASE="~/Applications/homebrew/bin/fzf";

# zsh based plugins
plugins=(zsh-autosuggestions zsh-peco-history fzf zsh-z zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# load custom built functions
fpath=(~/.my_zsh_functions $fpath);
autoload -U $fpath[1]/*(.:t)

eval "$(zoxide init zsh)"

##########################################################
# Aliases
##########################################################

# In order to use neovim in place of vim. You can always type \vim to ignore the alias
alias vim="nvim"
alias vi="nvim"

alias ls="exa"
alias ll="exa -alh --group-directories-first"
alias tree="exa --tree --git-ignore"
alias cd="z"

alias gits="git status"
alias gitbranch="git branch | peco | xargs git checkout"
alias gitdelete="git branch | peco | xargs git branch -D"
alias gitlog="git log --all --decorate --oneline --graph"
alias gitstashdrop="git stash list | peco | grep -o '{[0-9]*}' | cut -d'{' -f2 | cut -d'}' -f1 | sort -ur | xargs -n 1 -I {} git stash drop stash@{{}}"
alias gitreset="git reset --merge"

alias python2="python"
alias pip2="python -m pip"
alias python="python3"
alias pip="python3 -m pip"

alias bathelp='bat --plain --language=cmd-help'
alias wh="EDITOR=nvim wh"
alias pensieve="code ~/Code/personal/pensieve"

alias loadup_time="nvim --startuptime /tmp/startup.log -c exit && tail -n 1 /tmp/startup.log"
alias brewupgrade="brew outdated | xargs brew install"

##########################################################
# Custom Functions
##########################################################

# In order to allow us to open vscode using the command code
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Forces zsh to mimic the bash command format, fg N (where N is a job number)
fg() {
    if [[ $# -eq 1 && $1 = - ]]; then
        builtin fg %-
    else
        builtin fg %"$@"
    fi
}

##########################################################
# Installation Exports
##########################################################

# setting up git to use nvim
export GIT_EDITOR=nvim

# setting up java and scala
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="~/Applications/homebrew/opt/openjdk@8/bin:$PATH"
export SCALA_HOME='~/Applications/homebrew/opt/scala@2.12'
export PATH=$PATH:$SCALA_HOME/bin
export PATH=$PATH:/opt/apache-maven/bin

# setting up spark
export SPARK_HOME="~/Applications/spark/python"
export PATH=$PATH:/usr/local/git/bin:$SPARK_HOME/bin

# Add pyenv executable to PATH and
# enable shims by adding the following
# to ~/.profile and ~/.zprofile:

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Load pyenv into the shell by adding
# the following to ~/.zshrc:
eval "$(pyenv init -)"

# sets up nvm for managing node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# sets up Postgres
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
