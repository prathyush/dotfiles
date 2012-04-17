# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for example


# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"


#Export TERM to vt100
export TERM=vt100

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color)
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    ;;
*)
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    ;;
esac

# Comment in the above and uncomment this below for a color prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable color support of ls and also add handy aliases
#if [ "$TERM" != "dumb" ]; then
#    eval "`dircolors -b`"
#    alias ls='ls --color=auto'
#    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
#fi

# some more ls aliases
#alias ls='~/bin/colorls'
alias ll='ls -ltr'
alias la='ls -A'

#ws aliases
alias ws-sfbay="cd /net/drosera.sfbay/export/users/rt230969/"
alias ws-india="cd /net/drosera.india/export/users/rt230969/"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

#My Additions
export PYTHONSTARTUP=/home/hem/.pystartup
export EDITOR=emacs

export PATH=/opt/csw/bin/:/usr/gnu/bin:/bin:/sbin:/usr/sbin:$PATH:/usr/local/bin:/opt/LWS/bin:/opt/gnu/bin:/opt/csw/bin/:/opt/gnu/wine/bin:/opt/gnu/eclipse

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

alias vless='/usr/share/vim/macros/less.sh'
#alias gcc=colorgcc
#alias diff='/home/rt230969/bin/colordiff' 
alias urxvt="/usr/bin/urxvt  -pe tabbed -bg black -fg white  -tr +sb -sl 8192 +hold -fn 'xft:Andale Mono:pixelsize=16:antialias=false,xft:Arial'"
alias xterm=" xterm -fn -*-lucidatypewriter-medium-*-*-*-*-*-100-100-*-100-iso10646-1 -bg black -fg white"
alias uxterm=" uxterm -fn -*-lucidatypewriter-medium-*-*-*-*-*-100-100-*-100-iso10646-1 -bg black -fg white"
alias bugster="javaws ~/bugster.jnlp &"

set -o vi
export PAGER=less
export go=gnome-open
