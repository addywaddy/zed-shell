# Setup automcompletion
fpath=(~/.zsh/completions $fpath)
autoload -U compinit
compinit

autoload -U zmv
alias mmv='noglob zmv -W'

# Vi key bindings
bindkey -e

# Includes
. ~/.zsh/functions.zsh
. ~/.zsh/completions.zsh
. ~/.zsh/colours.zsh
. ~/.zsh/aliases.zsh
. ~/.zsh/key_bindings.zsh
. ~/.zsh/prompt.zsh
. ~/.zsh/iterm.zsh
. ~/.zsh/ruby.zsh

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

# If I am using vi keys, I want to know what mode I'm currently using.
# zle-keymap-select is executed every time KEYMAP changes.
# From http://zshwiki.org/home/examples/zlewidgets
function zle-keymap-select {
  VIMODE="${${KEYMAP/vicmd/ M:command}/(main|viins)/}"
  zle reset-prompt
}

zle -N zle-keymap-select
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

ttyctl -f # The  -f  option  freezes the tty, enabling vim to receive <C-s> commands

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
