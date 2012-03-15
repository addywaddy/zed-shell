export    RUBY_SYMLINK_PATH=/usr/local/ruby/bin
export	  PATH=/usr/local/bin:$PATH
export    PATH=$PATH:/usr/local/git/bin:/opt/local/bin:/opt/local/sbin
export    PATH=$PATH:/Users/agroves/Scripts
export    PATH=$PATH:$EC2_HOME/bin
export    MANPATH=$MANPATH:/opt/local/man
# Java
export    JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export    CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar
# Assert Valid Asset
export    MARKUP_VALIDATOR_HOST='localhost'
export    MARKUP_VALIDATOR_PATH='/w3c-validator/check'

# Node
export    NODE_PATH="/usr/local/lib/node_modules"

export    EDITOR="/usr/bin/mate -w"
export    EDITOR="/usr/local/bin/vim"
export    VISUAL=$EDITOR

WORDCHARS="${WORDCHARS:s#/#}"

# Libcroco (https://github.com/tenderlove/csspool/blob/master/README.rdoc)
export    LIBCROCO=/opt/local/lib/libcroco-0.6.dylib
. ~/.zsh/aws.zsh
