# colors for ls, etc.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}

function proml {
local BLUE="\[\033[0;34m\]"
local RED="\[\033[0;31m\]"
local LIGHT_RED="\[\033[1;31m\]"
local GREEN="\[\033[0;32m\]"
local LIGHT_GREEN="\[\033[1;32m\]"
local WHITE="\[\033[1;37m\]"
local LIGHT_GRAY="\[\033[0;37m\]"
case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
esac

PS1="${TITLEBAR}\
$BLUE[$WHITE\$(date +%H:%M)$BLUE]\
$BLUE[$WHITE\u@\h:\w$BLUE\$(parse_git_branch)$BLUE]\
$GREEN\$ "
PS2='> '
PS4='+ '
}
proml


# cli color
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# tec
alias tec="$HOME/repos/Z-github/UbuntuTranslator/6.out -e2c"
alias tce="$HOME/repos/Z-github/UbuntuTranslator/6.out -c2e"

# go
export PATH="$HOME/sdks/go/bin:$PATH"

# fink
# . /sw/bin/init.sh 

# some more ls aliases
alias ll='ls -alFt'
alias la='ls -A'
alias l='ls -CF'

# node path
export NODE_PATH="/usr/local/lib/node"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH"


##
# Your previous /Users/ywang/.profile file was backed up as /Users/ywang/.profile.macports-saved_2011-02-03_at_23:41:23
##

# MacPorts Installer addition on 2011-02-03_at_23:41:23: adding an appropriate PATH variable for use with MacPorts.
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

