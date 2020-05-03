# kaLn zshrc
# path vars
export PATH=$HOME/.local/bin:/usr/local/bin:$PATH

# oh-my-zsh path
export ZSH="$HOME/.oh-my-zsh"

# theme
ZSH_THEME="spaceship"

# plugins
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# aliases
alias ls="lsd"
alias cat="bat"
