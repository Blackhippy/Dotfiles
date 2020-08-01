antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
source ~/.zsh_plugins.sh


autoload -Uz compinit 
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;

# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=50000
SAVEHIST=10000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt share_history

# Changing directories
setopt auto_cd
setopt auto_pushd
unsetopt pushd_ignore_dups
setopt pushdminus

# Completion
setopt auto_list
setopt auto_menu
setopt always_to_end
setopt complete_in_word
setopt correct_all
unsetopt flow_control
unsetopt menu_complete
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH_CACHE_DIR
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
#zsh-history-substring-search key bindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#Enable Autocompletion
autoload -Uz compinit
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi
zmodload -i zsh/complist

#Alias
alias cat="bat --paging=never --style=plain"
alias joplin=".joplin/Joplin.AppImage"
alias ls="exa"
alias la="exa -la"
alias vim="nvim"
alias reload="xrdb -load ~/.Xresources"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

#YAY
alias install='yay -S'
alias remove='yay sudo pacman -Rs'
alias update='yay -Syu'
alias search='yay -Ss'
alias cleanup='yay -Rns $(yay -Qtdq)'
alias pkgcnt='yay -Q | wc -l'

#Exports
export PATH="/usr/local/bin:$PATH"
export PATH="/home/hippi/.local/bin:$PATH"
export GOPATH="$PATH:$HOME/go/bin"

