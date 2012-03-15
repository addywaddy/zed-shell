# Filesystem
alias        l='ls -laGh'
alias       ..='cd ..'
alias     cpwd="pwd | pbcopy"
alias     ppwd="cd `pbpaste`"
alias    mysql='mysql5'
alias     rmrf='rm -rf'
alias       dh='dirs -v'

# Editors
alias       mm='mate .'
alias       vim=/usr/local/bin/vim
alias       vv='vim .'
alias       vi='vim'

# Rails/Ruby
alias       ss='script/server'
alias      sss='script/server -estaging'
alias       sc='script/console'
alias      scs='script/console staging'
alias    nrake='NONET=true rake'

# Git
alias        g="$EDITOR $HOME/.gitconfig"
alias  gitconf="$EDITOR .git/config"
alias   gitmod="$EDITOR .gitmodules"
alias   gitig="$EDITOR .gitignore"

#Utils
alias     hcal='cal | grep -C6 --color -e " $(date +%e)" -e "^(date +%e)"'
alias     sedi="sed -i '' -e "
alias   grepps="ps aux | grep"
alias       tf="tail -f -n200"
alias       ip='ifconfig | grep "broadcast" | cut -b7-20'
alias       zr='source $HOME/.zshrc'
alias        h="$EDITOR /etc/hosts"
alias      dns="$EDITOR /etc/resolv.conf"
alias        v="$EDITOR $HOME/.vim"
alias        z="$EDITOR $HOME/.zsh"
