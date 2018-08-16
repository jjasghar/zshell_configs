# -------------------------------------------------------------------
# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------
#alias foobar='nocorrect foobar'
alias g8='nocorrect g8'

# -------------------------------------------------------------------
# Ruby stuff
# -------------------------------------------------------------------
alias ri='ri -Tf ansi' # Search Ruby documentation
alias rake="noglob rake" # necessary to make rake work inside of zsh
alias be='bundle exec'

# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias 'bk=cd $OLDPWD'

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------
alias lh='ls -d .*' # show hidden files/directories only
alias lsd='ls -aFhlG'
alias l='ls -al'
alias ls='ls -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
alias ll='ls -GFhl' # Same as above, but in long listing format
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias 'dus=du -sckx * | sort -nr' #directories sorted by size

alias 'wordy=wc -w * | sort | tail -n10' # sort files in current directory by the number of words they contain
alias 'filecount=find . -type f | wc -l' # number of files (not directories)

# -------------------------------------------------------------------
# Mac only
# -------------------------------------------------------------------
if [[ $IS_MAC -eq 1 ]]; then
    alias oo='open .' # open current directory in OS X Finder
fi

# -------------------------------------------------------------------
# emacs :)
# -------------------------------------------------------------------
alias e='emacsclient -n'
alias emacs='emacsclient -n'

#
# vccode
#
alias c='code'

#
# md2word
#

alias md2word=md2word
function md2word () {
    PANDOC_INSTALLED=$(pandoc --version >> /dev/null; echo $?)

    if [[ ${PANDOC_INSTALLED} == "0" ]]; then
        pandoc -o $2 -f markdown -t docx $1
    else
        echo "Pandoc is not installed. Unable to convert document."
    fi
}


# -------------------------------------------------------------------
# Cloud stuff
# -------------------------------------------------------------------

alias gcp_create="gcloud compute instances create temp-`date +%F` --image-project=ubuntu-1604-lts --machine-type g1-small && gcloud compute ssh temp-`date +%F`"
alias gcp_delete="gcloud compute instances delete temp-`date +%F`"
alias gist='gist -c -p'

# -------------------------------------------------------------------
# git stuff
# -------------------------------------------------------------------

alias hb="hub browse"
alias hpr="hub pull-request"
