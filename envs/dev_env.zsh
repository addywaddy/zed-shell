export IMEDODEV=/opt/imedodev/current
export GEM_HOME=/opt/imedodev/current/gems
export GEM_PATH=/opt/imedodev/current/gems
export PATH=$IMEDODEV/bin:$PATH
export PATH=$IMEDODEV/gems/bin:$PATH
export REPO_ROOT=$HOME/imedo/git
DEV_ENV=imedo
IMEDO_HOME="$REPO_ROOT/imedo/trunk/apps/imedo"
alias code="cd $IMEDO_HOME"
alias   subup='pushd .  && cd $REPO_ROOT/imedo && git submodule update && git submodule update && popd'
function go () {
  cd $REPO_ROOT/client_apps/${1}*
}
