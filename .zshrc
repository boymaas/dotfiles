# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="blinks"
ZSH_THEME="miloshadzic"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
PROMPT='%{$fg[cyan]%}%4~%{$reset_color%}%{$fg[red]%}|%{$reset_color%}$(git_prompt_info)%{$fg[cyan]%}>%{$reset_color%}'

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rvm rails3 git git-flow)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#
# Configuring rvm .. make sure this is after all PATHs are configured
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# and last, but first in becoming add our own
# scripts, also add brew's bin path
export PATH=$HOME/bin:/usr/local/bin:$PATH
