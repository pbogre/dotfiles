export ZSH="$HOME/.config/zsh/.oh-my-zsh"

alias vim="nvim"

ZSH_THEME="nanotech"
plugins=(
	git
)

# move .zcompdump files
autoload -Uz compinit
compinit -d ~/.config/zsh/.zcompdump

source $ZSH/oh-my-zsh.sh
eval $(/opt/homebrew/bin/brew shellenv)
