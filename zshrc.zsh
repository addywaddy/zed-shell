LANG=en_GB.UTF-8
export LC_ALL=$LANG

# Setup automcompletion
fpath=(~/.zsh/completions $fpath)
autoload -U compinit
compinit

# Emac key bindings
bindkey -e

# Includes
. ~/.zsh/variables.zsh
. ~/.zsh/functions.zsh
. ~/.zsh/envs/dev_env.zsh
. ~/.zsh/completions.zsh
. ~/.zsh/colours.zsh
. ~/.zsh/aliases.zsh
. ~/.zsh/key_bindings.zsh
. ~/.zsh/prompt.zsh
. ~/.zsh/iterm.zsh

# Command history
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000
setopt autocd

# Directory history
DIRSTACKSIZE=10
setopt autopushd pushdminus pushdsilent pushdtohome

stty stop undef

setopt extended_glob
