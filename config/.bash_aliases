
alias grep='grep --color'
alias fgrep='fgrep --color'
alias egrep='egrep --color'


if [ `uname` == "Darwin" ]; then
    alias ls='ls -G'
else
    alias ls='ls --color'
    alias dir='dir --color'
    alias vdir='vdir --color'
fi

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias diff=colordiff
alias df='df -h'
alias du='du -h'
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort

alias cs='source ${HOME}/.script/bin/.source-scd'

..() {
    num=$1
    test $1 || num=1
    level=`seq $num`
    up=`printf "../%.0s" $level`
    cd $up
    ls  
}

if [ ! -e /usr/bin/tac ]; then
    alias tac='cat'
fi
