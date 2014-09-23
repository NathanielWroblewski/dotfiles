source ~/.bin/tmuxinator.bash

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$HOME/local/bin:$PATH
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# added by travis gem
[ -f /Users/nathanielwroblewski/.travis/travis.sh ] && source /Users/nathanielwroblewski/.travis/travis.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
