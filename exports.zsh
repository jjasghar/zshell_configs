# Currently this path is appended to dynamically when picking a ruby version
# zshenv has already started PATH with rbenv so append only here
export PATH=$PATH~/bin:/usr/local/bin:/usr/local/sbin:~/bin
# istio application
export PATH="$PATH:/home/jj/repo/workshops/istio-workshop/istio-1.0.2/bin"

# Set default console Java to 1.6
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

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

# GO Path
export GOROOT=/usr/local/go
export GOPATH=$HOME/repo/golang/
export PATH=$PATH:$GOROOT/bin

# added by travis gem
[ -f /Users/jjasghar/.travis/travis.sh ] && source /Users/jjasghar/.travis/travis.sh

# kubectl completion
source <(kubectl completion zsh)

# docker completion
fpath=(~/.zsh/completion $fpath)
