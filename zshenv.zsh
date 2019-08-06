export LANG=en_GB.UTF-8
export LC_CTYPE=$LANG
export LC_COLLATE=C

# Path
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/Cellar/node/7.7.1_1/bin:$PATH
export PATH=$PATH:$HOME/Scripts
export PATH=$PATH:$HOME/go/bin
export EDITOR="/usr/local/bin/vim"
export VISUAL=$EDITOR

export WORDCHARS="${WORDCHARS:s#/#}"
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export ASDF_DIR=$(brew --prefix asdf)

# Use fd instead of find with fzf
export FZF_DEFAULT_COMMAND='fd --type f'
