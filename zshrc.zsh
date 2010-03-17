LANG=de_DE.UTF-8
autoload -U compinit
compinit
bindkey -e

# Includes
. ~/.zsh/variables.zsh
. ~/.zsh/envs/dev_env.zsh
. ~/.zsh/styles.zsh
. ~/.zsh/colours.zsh
. ~/.zsh/aliases.zsh
. ~/.zsh/key_bindings.zsh
. ~/.zsh/prompt.zsh

# Command history
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000
setopt autocd

# Directory history
DIRSTACKSIZE=10
setopt autopushd pushdminus pushdsilent pushdtohome

function stage {
  cap staging deploy --set branch=$1 --set rebase_to=$1
}

function precmd {
      vcs_info 'prompt'
}

function lprompt {
    PROMPT_SYMBOL="${PR_WHITE} $ ${PR_RESET}"
    PROMPT="%b %~%B${PROMPT_SYMBOL}%b"
}

function rprompt {
    CURRENT_DEV_ENV="{${PR_RED}${DEV_ENV}${PR_RESET}}"
    TIME="[${PR_MAGENTA}%T${PR_RESET}]"
    local git='$vcs_info_msg_0_'
    GIT="${git}"
    RPROMPT="${TIME}${GIT}${CURRENT_DEV_ENV}"
}

function imedoenv () {
  cat ~/.zsh/envs/imedo_env.zsh > ~/.zsh/envs/dev_env.zsh
  source $HOME/.zshrc
}

function myenv () {
  cat ~/.zsh/envs/my_env.zsh > ~/.zsh/envs/dev_env.zsh
  source $HOME/.zshrc
}

lprompt ""
rprompt ""

/opt/imedodev/current/bash/environment/development.sh
