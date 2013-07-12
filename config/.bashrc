
if [ -f ~/.script/config/.bash_fun ]; then
  . ~/.script/config/.bash_fun
fi

if [ -f ~/.script/config/.bash_aliases ]; then
  . ~/.script/config/.bash_aliases
fi

if [ -f ~/.script/config/.bash_aliases ]; then
  . ~/.script/config/.bash_color
fi

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

IS_CYGWIN=`env | grep -i windows | wc -l`

if [ ! ${IS_CYGWIN} -eq "0" ]; then
    export LC_ALL="en_US"
fi
#export TERM="xterm-256color"
export PATH="$PATH:$HOME/.script/bin/"
export PS1="${C32}|(${C37}\u${C32})-(${C37}\j${C32})-(${C37}\w${C32})-\$(git_branch)\n|=> ${C0}"

if [ `uname` = "Darwin" ]; then
    alias syn_kb="sudo /Applications/Synergy.app/Contents/MacOS/synergys -c ~/.air_synergy.config -n yclins_air"
    alias syn_kb_sta="netstat -atn | grep 24800"
fi
