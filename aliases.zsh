# Filesystem
alias        l='ls -ltaGh'
alias       ..='cd ..'
alias     cpwd="pwd | pbcopy"
alias     ppwd="cd `pbpaste`"
alias     rmrf='rm -rf'
alias       dh='dirs -v'

# Editors
alias       vi=vim
alias       vv='vim .'
alias       mm='mvim .'
alias       ee="open . -a Emacs"
alias        j='vi ~/Documents/journal.txt'
alias        w="date '+%a %b %d %Y' >> ~/Documents/work.txt && vi ~/Documents/work.txt"
alias        k='vi ~/Documents/learning.md'
alias        tt='vi ~/Documents/typing.txt'
alias        em='emacsclient --no-wait'

# Rails/Ruby
alias       ss='script/server'
alias      sss='script/server -estaging'
alias       sc='script/console'
alias      scs='script/console staging'
alias    nrake='NONET=true rake'

# Git
alias        g="git config --global -e"
alias       gl="git config --local -e"
alias       gm="$EDITOR .gitmodules"
alias       gi="$EDITOR .gitignore"

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
alias        s="$EDITOR $HOME/.slate"
alias        sc="$EDITOR $HOME/.ssh/config"
alias       be="bundle exec"
