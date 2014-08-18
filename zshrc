# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
DEFAULT_USER=hauke

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump nyan)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export JIMDO_TEST_HOST=stangegit.test
export BUNDLER_EDITOR='/usr/local/bin/subl'
export GOPATH='/usr/local/gocode'
export PATH="/Users/hauke/bin:/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/local/share/npm/bin:/usr/local/heroku/bin:/Users/hauke/Development/depot_tools:$PATH"

fpath=("/Users/hauke/Development/depot_tools/zsh-goodies" $fpath)

eval "$(rbenv init -)"
source /Users/hauke/.phpbrew/bashrc
source /usr/local/share/zsh/site-functions/go

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Open ssh tunnel for debugging purposes
alias debug_testserver='ssh testserver -L 0.0.0.0:9000:localhost:9999'

# Start rails server with localhost as provider in devbox
alias bails="BASE_URL='http://192.168.50.1:3000' rails server"

# Debug log of the vagrant devbox
alias devlog="vagrant ssh -c \"sudo tail -f /var/log/lighttpd/debug.log\""

alias ta="tmux attach"

# Home of the docker daemon
export DOCKER_HOST=tcp://127.0.0.1:4243
