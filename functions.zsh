# opens the gem in Vim
function gum () {
  mvim `ls -d $GEM_HOME/gems/$1-* | sort | tail -n 1`
}

# cd to gem
function gom () {
  cd `bundle show $1`
}

function sedack() {

  if [[ $1 == "-h" ]];
  then
    echo "Usage:"
    echo "sedack {flags} {ack_pattern} {sed_expression} {folders}\n"
    echo "Example:"
    echo 'sedack -i "Hello" "Hello/Goodbye" lib app\n'
    echo "Flags:"
    echo "-i for realz\n"
    return 1
  fi

  ORIG_LANG=$LANG
  LANG=C # Avoids sed thinking the file is encoded in something fancy

  if [[ $1 == "-i" ]];
  then
    echo "Replacing '$2' with '$3' in the following files:\n"
    ack -a -l $2 ${@: 4}
    ack -a -l  --print0 $2 ${@: 4} |xargs -0 -n 1 sed -i '' -e "s|$2|$3|"
    echo "\nDone!"
  else
    echo "Would run the substitution '$2' in the following files:\n"
     ack -a -l $1 ${@: 3}
  fi
  LANG=$ORIG_LANG
}

function tabname () {
  echo -ne "\e]1;$@\a"
}
