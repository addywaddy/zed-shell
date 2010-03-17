export    PATH=$PATH:/Users/agroves/homebrew/bin:/opt/local/bin:/opt/local/sbin
export    PATH=$PATH:/Users/agroves/Scripts
export    PATH=$PATH:$EC2_HOME/bin
export    MANPATH=$MANPATH:/opt/local/man

# Java
export    JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

# Assert Valid Asset
export    MARKUP_VALIDATOR_HOST='validator.w3.org'
export    MARKUP_VALIDATOR_PATH='/check'

# Node
export    NODE_PATH=$HOME/node

export    EDITOR='vim'
export    VISUAL=$EDITOR

WORDCHARS="${WORDCHARS:s#/#}"

. ~/.zsh/aws.zsh
