function imedoenv () {
  cat ~/.zsh/envs/imedo_env.zsh > ~/.zsh/envs/dev_env.zsh
  source $HOME/.zshrc
}

function myenv () {
  cat ~/.zsh/envs/my_env.zsh > ~/.zsh/envs/dev_env.zsh
  source $HOME/.zshrc
}

# opens the gem in Vim
function gum () {
  mvim `ls -d $GEM_HOME/gems/$1-* | sort | tail -n 1`
}

# cd to gem
function gom () {
  cd `ls -d $GEM_HOME/gems/$1-* | sort | tail -n 1`
}
