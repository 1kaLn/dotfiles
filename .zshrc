# kaLn zshrc
# path vars
export PATH="$HOME/.local/bin:/usr/local/bin:$PATH"

# deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# cargo
export CARGO_PATH="$HOME/.cargo"
export PATH="$CARGO_PATH:$PATH"

# oh-my-zsh path
export ZSH="$HOME/.oh-my-zsh"

# theme
ZSH_THEME="spaceship"

# plugins
plugins=(git zsh-syntax-highlighting)

# run oh-my-zsh
source "$ZSH/oh-my-zsh.sh"

# aliases
source "$HOME/.aliases"
