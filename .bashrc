# add optional items to the path
# $HOME/bin contains user defined executables
PATH=$HOME/bin:$PATH

# node version manager
NVM_DIR="$HOME/.nvm"

# Sets default editor to sublime
EDITOR="subl -w"
VISUAL="subl -w"

git_branch () {
  local branch=$(git symbolic-ref --short HEAD 2> /dev/null)

  if [ -n "$branch" ]; then
    echo " ($branch)"
  fi
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"

# bash prompt is "/path (branch) $ "
PS1="$YELLOW\W$RED\$(git_branch) $GREEN\$ "

# ensure color output of "ls" is preserved through pipes, used in "ll"
CLICOLOR_FORCE=1
# "ll" command as a shortcut for "ls" with flags
# "ls" does not allow user to export default flags
alias ll="ls -FGoah | awk '{ print $1 $3 $4 $8 }'"

# bundle dependencies in vendor/path instead of system and include binstubs
# for app_root/bin/shortcuts
alias bun="bundle install --binstubs --path=vendor/bundle"

# start the postgres server
alias pgup="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"

export PATH NVM_DIR EDITOR PS1 CLICOLOR_FORCE

# load chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
