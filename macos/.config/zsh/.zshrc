export ZSH="$HOME/.config/zsh/.oh-my-zsh"

ZSH_THEME="nanotech"
plugins=(
	git
)

# move .zcompdump files
autoload -Uz compinit
compinit -d ~/.config/zsh/.zcompdump

# move vimrc
export VIMINIT='source $MYVIMRC'
export MYVIMRC='~/.config/vim/.vimrc'

source $ZSH/oh-my-zsh.sh
eval $(/opt/homebrew/bin/brew shellenv)
