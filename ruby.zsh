export GEM_HOME=~/.gem
export GEM_PATH=$GEM_HOME
export PATH="$HOME/.gem/bin:$PATH"

#Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
