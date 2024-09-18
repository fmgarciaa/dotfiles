# ~~~~~~~~~~~~~~~ zsh-basse ~~~~~~~~~~~~~~~~~~~~~~~~
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh


# ~~~~~~~~~~~~~~~ Completion ~~~~~~~~~~~~~~~~~~~~~~~~

autoload -Uz compinit
compinit -u


# ~~~~~~~~~~~~~~~ plugins ~~~~~~~~~~~~~~~~~~~~~~~~
plugins=(git zsh-autosuggestions zsh-syntax-highlighting colorize copybuffer emoji-clock emoji jump)

[[ -s $(brew --prefix)/etc/autojump.sh ]] && source $(brew --prefix)/etc/autojump.sh


# ~~~~~~~~~~~~~~~ Environment Variables ~~~~~~~~~~~~~~~~~~~~~~~~


# Set to superior editing mode

set -o vi

export VISUAL=nvim
export EDITOR=nvim
export TERM="tmux-256color"
export PATH=$PATH:$(go env GOPATH)/bin

# Directories

export REPOS="$HOME/Repos"
export GHREPOS="$REPOS/github.com/"

# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~


HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_SPACE  # Don't save when prefixed with space
setopt HIST_IGNORE_DUPS   # Don't save duplicate lines
setopt SHARE_HISTORY      # Share history between sessions

# ~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~


alias v=nvim
alias c="clear"
alias t='tmux'
alias e='exit'

# Repos

alias dot='cd $GHREPOS/dotfiles'
alias repos='cd $REPOS'
alias nv='cd $GHREPOS/nvim-config'

# Git

alias gp='git pull'
alias gs='git status'
alias lg='lazygit'

# Kubernetes

alias k='kubectl'

alias kgp='kubectl get pods'
alias kc='kubectx'
alias kn='kubens'

