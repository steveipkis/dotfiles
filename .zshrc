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
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

##########################################################
# Plugins and Integrations
##########################################################

## Local Brew installation
export PATH="/opt/homebrew/bin:$PATH"

## Local Plugins and Functions Configuration
export FZF_BASE="/opt/homebrew/bin/fzf";

# zsh based plugins
plugins=(zsh-autosuggestions zsh-peco-history fzf zsh-syntax-highlighting)
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
alias zed="open -a /Applications/Zed.app -n"

alias ls="eza"
alias ll="eza -alh --group-directories-first"
alias tree="eza --tree --group-directories-first --git-ignore"
alias cd="z"

alias gits="git status"
alias gitbranch="git branch | peco | xargs git switch"
alias gitdelete="git branch | peco | xargs git branch -D"
alias gitfetch="git fetch --all --tags --prune-tags --prune"
alias gitlog="git log --all --decorate --oneline --graph"
alias gitprune="git branch -vv | grep 'gone]' | awk '{print $1}' | xargs git branch -D"
alias gitreset="git reset --merge"
alias gitstashdrop="git stash list | peco | grep -o '{[0-9]*}' | cut -d'{' -f2 | cut -d'}' -f1 | sort -ur | xargs -n 1 -I {} git stash drop stash@{{}}"

alias python="python3"
alias pip="python3 -m pip"

alias loadup_time="nvim --startuptime /tmp/startup.log -c exit && tail -n 1 /tmp/startup.log"
alias brewupgrade="brew outdated | xargs brew install"

# alias csv="jq -r '(map(keys) | add | unique) as $cols | map(. as $row | $cols | map($row[.])) as $rows | $cols, $rows[] | @csv'"

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

# Custom scripts
export PATH="$HOME/Applications/scripts/bin:$PATH"

# sets up nvm for managing node and for nvim code completion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Setting up java with jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Setting up pyenv
export pyenv_root="$home/.pyenv"
[[ -d $pyenv_root/bin ]] && export path="$pyenv_root/bin:$path"
eval "$(pyenv init -)"
eval "$(pyenv init --path)"

# sets up Postgres
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# NOTE: JAVA_HOME and SCALA_HOME configured by jenv and sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
