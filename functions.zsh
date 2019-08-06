# opens the gem in Vim
function gum () {
  mvim `ls -d $GEM_HOME/gems/$1-* | sort | tail -n 1`
}

# cd to gem
function gom () {
  cd `bundle show $1`
}

function sedag() {

  if [[ $1 == "-h" ]];
  then
    echo "Usage:"
    echo "sedag {flags} {ag_pattern} {sed_expression} {folders}\n"
    echo "Example:"
    echo 'sedag -i "Hello" "Hello/Goodbye" lib app\n'
    echo "Flags:"
    echo "-i for realz\n"
    return 1
  fi

  ORIG_LANG=$LANG
  LANG=C # Avoids sed thinking the file is encoded in something fancy

  if [[ $1 == "-i" ]];
  then
    echo "Replacing '$2' with '$3' in the following files:\n"
    ag -a -l $2 ${@: 4}
    ag -a -l  --print0 $2 ${@: 4} |xargs -0 -n 1 sed -i '' -e "s|$2|$3|"
    echo "\nDone!"
  else
    echo "Would run the substitution '$2' in the following files:\n"
     ag -a -l $1 ${@: 3}
  fi
  LANG=$ORIG_LANG
}

function tabname () {
  echo -ne "\e]1;$@\a"
}

function rspring {
  if [ -f bin/spring ]
  then
    bin/spring rspec "$@"
  else
		bundle exec rspec "$@"
  fi
}

function xkcdpass () {
  [ $(echo "$1"|grep -E "[0-9]+") ] && NUM="$1" || NUM=1
  DICT=$(LC_CTYPE=C grep -E "^[a-zA-Z]{3,6}$" /usr/share/dict/words)
  for I in $(seq 1 "$NUM"); do
      WORDS=$(echo "$DICT"|gshuf -n 6|paste -sd ' ' -)
      XKCD=$(echo "$WORDS"|sed 's/ //g')
      echo "$XKCD ($WORDS)"|awk '{x=$1;$1="";printf "%-36s %s\n", x, $0}'
  done | column
}

function ibmcc () {
  eval $(ibmcloud cs cluster-config $1 | tail -2 | head -1)
  echo $KUBECONFIG
}

# FZF functions
fgb() {
  local branches branch
  # branches=$(git branch -vv) &&
  # branch=$(echo "$branches" | fzf +m) &&
  # git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
  branches=$(git branch -a) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch")
}
