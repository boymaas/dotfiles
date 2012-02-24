# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="blinks"
#ZSH_THEME="miloshadzic"
#ZSH_THEME="boymaas"

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
unsetopt correct_all

# Load my theme this way ... theme loader is not correct in 
# oh-my-zsh implementation
source $ZSH_CUSTOM/boymaas.zsh-theme

# Customize to your needs...
#
# Configuring rvm .. make sure this is after all PATHs are configured
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# and last, but first in becoming add our own
# scripts, also add brew's bin path
export PATH=$HOME/bin:/usr/local/bin:$PATH

# do not want immediate sharing of history
# want to run `fc -R` explicitly
# and have a history per shell, on new terms
# I want latest history
unsetopt sharehistory
setopt incappendhistory

# Start up an editor when I press ESC-e
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\ee' edit-command-line

# Want my completetions to be categorized
# the list seperator reminds me more of shell commands
zstyle ':completion:*:descriptions' format %B%d%b
zstyle ':completion:*' list-separator '#'
