# Currently this path is appended to dynamically when picking a ruby version
# zshenv has already started PATH with rbenv so append only here
export PATH=$PATH~/bin:/usr/local/bin:/usr/local/sbin:~/bin

# Set default console Java to 1.6
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
export EDITOR='emacsclient -n'

#export NODE_PATH=/opt/github/homebrew/lib/node_modules
#export PYTHONPATH=/usr/local/lib/python2.6/site-packages
# CTAGS Sorting in VIM/Emacs is better behaved with this in place
export LC_COLLATE=C

if [ -e ~/.rackspace ]; then
    source ~/.rackspace
fi

# added by travis gem
[ -f /Users/jasghar/.travis/travis.sh ] && source /Users/jasghar/.travis/travis.sh

# direnv eval to make it happy
eval "$(direnv hook zsh)"

# keys because keys
source '/Users/jjasghar/keys'

# chruby stuff
source /usr/local/opt/chruby/share/chruby/chruby.sh

# GO Path
export GOPATH=$HOME/golang
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$GOPATH/bin

# rust path
source $HOME/.cargo/env

# added by travis gem
[ -f /Users/jjasghar/.travis/travis.sh ] && source /Users/jjasghar/.travis/travis.sh

# remote docker/photo instance
export DOCKER_HOST=tcp://10.0.0.181:2375

#### zshell imports
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
