# Source the dev env
/opt/imedodev/current/bash/environment/development.sh

export IMEDODEV=/opt/imedodev/current
export GEM_HOME=/opt/imedodev/current/gems
export GEM_PATH=/opt/imedodev/current/gems
export PATH=$IMEDODEV/bin:$PATH
export PATH=$RUBY_SYMLINK_PATH:/usr/local/git/bin:$IMEDODEV/gems/bin:$PATH:$HOME/.rbenv/bin
export REPO_ROOT=$HOME/imedo/git
DEV_ENV=imedo
export DEPLOYMENT=developer
IMEDO_HOME="$REPO_ROOT/imedo/trunk/apps/imedo"
alias code="cd $IMEDO_HOME"
alias   subup='pushd .  && cd $REPO_ROOT/imedo && git submodule update && git submodule update && popd'

# For csspool gem
export LIBCROCO=/opt/imedodev/current/lib/libcroco-0.6.dylib

# Custom completion functions
function go () {
  cd $HOME/imedo/git/${1}
}

function premium_count () {
  ssh titan "/var/www/apps/doctors/current/script/runner -e production 'p Provider.count(:conditions => {:premium => true})'"
}

function most_recommended () {
  ssh titan "/var/www/apps/doctors/current/script/runner -e production 'Provider.most_recommendations(:min_amount => 100, :min_rating => 3.5)'"
}

function get_to_know()
{
  cat ~/.ssh/id_*.pub | ssh dev01 "ssh deploy@$1 '(mkdir -p ~/.ssh; chmod 700 ~/.ssh; cat >> ~/.ssh/authorized_keys)'"
}

function stage {
  cap staging deploy:migrations --set branch=$1 --set rebase_to=$1
}

function open_integrations() {
	integrations=(spiegel manager-magazin zeit sueddeutsche sales faz)
	url='/practice/provider_search/list?query=zahn&location=berlin&coords=&name=&rating=&order=rank'
	for i in $integrations; do
	  open -a "Google Chrome" "http://arztsuche.$i:4006$url"
	done
	open -a "Google Chrome" "http://c8e93fd19e29ca6081f4c4b6714cd99477bc5615.localhost:4006$url"
}
