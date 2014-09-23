export PATH=/opt/bin:/opt/vagrant/bin:/usr/local/bin:/sbin:/usr/contrib/bin:/bin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/local/heroku/bin:$PATH
# add optional items to the path
for bindir in $HOME/local/bin $HOME/bin; do
    if [ -d $bindir ]; then
        PATH=$PATH:${bindir}
    fi
done

export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

export DS_HOME="/Volumes/ds_home/core"
  function vg() {
     if [ $1 ]
     then
         pushd $DS_HOME;
         vagrant $@;
         popd;
     else
         pushd $DS_HOME;
     fi
  }

# export EDITOR='subl -w'

function parse_git_branch {
  ref=$(git-symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}
parse_git_branch

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"

PS1="\w$YELLOW \$(parse_git_branch)$GREEN\$ "
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
