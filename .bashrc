#prompt
if [ "x$YROOT_NAME" != "x" ]; then
    PS1="[\u@\h:$YROOT_NAME \W]\\$ "
else
    PS1="[\u@\h \W]\\$ "
fi

#Command alias
case "${OSTYPE}" in
    darwin*)
        alias ls="ls -G"
        alias ll="ls -lG"
        alias la="ls -laG"
        ;;
    linux*)
        alias ls='ls --color'
        alias ll='ls -l --color'
        alias la='ls -la --color'
        ;;
esac

alias grep='ggrep --color'
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias vi='vim'

# Color
## 参考
### http://geoff.greer.fm/lscolors/
### http://neko-mac.blogspot.jp/2015/03/mac_18.html
### https://www.gfd-dennou.org/arch/morikawa/memo/ls_colors.txt
export LSCOLORS=gxfxcxdxbxegedabagacad

export TERM=xterm-256color

#tree
#if [ -f /usr/bin/tree]; then
#    alias tree="pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/|  /g'"
#fi

#export PROMPT_COMMAND=’echo -ne “\033]0;${USER}@${HOSTNAME%%.*}\007″‘

if [ ! -r "$HOME/.ssh/auth_sock" ] ; then
    if [ "$SSH_AUTH_SOCK" -a "$SSH_AUTH_SOCK" != "$HOME/.ssh/auth_sock" ]; then
        ln -fs $SSH_AUTH_SOCK $HOME/.ssh/auth_sock
    fi
fi
export SSH_AUTH_SOCK=$HOME/.ssh/auth_sock

# golang
if [ -x "`which go`" ]; then
      export GOROOT=`go env GOROOT`
      export GOPATH=$HOME/go-local
      export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
fi

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# Java
# 1.8
 JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "1.8"`
# 1.6
#JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "1.6"`
PATH=$JAVA_HOME/bin:$PATH
export JAVA_HOME PATH

# Maven
export M3_HOME=/usr/local/apache-maven-3.3.3
M3=$M3_HOME/bin
export PATH=$M3:$PATH

# NVM
export NVM_DIR="/Users/hokamoto/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
