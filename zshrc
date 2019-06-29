# kaLn zshrc
# path vars
export PATH=$HOME/.cargo/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export GOPATH=$HOME/go

# oh-my-zsh path
export ZSH="/home/kaln/.oh-my-zsh"

# theme
ZSH_THEME="spaceship"

# plugins
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
