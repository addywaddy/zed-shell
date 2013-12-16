# Path
export    PATH=/usr/local/sbin:$PATH

# Java
export    JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export    CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar

# Assert Valid Asset
export    MARKUP_VALIDATOR_HOST='localhost'
export    MARKUP_VALIDATOR_PATH='/w3c-validator/check'

# Node
export    NODE_PATH="/usr/local/lib/node_modules"

export    EDITOR="/usr/bin/vim"
export    VISUAL=$EDITOR

WORDCHARS="${WORDCHARS:s#/#}"
