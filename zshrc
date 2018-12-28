# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="powerline"
#ZSH_THEME="robbyrussell"
ZSH_THEME="dracula"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby autojump osx mvn gradle zsh-nvm zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias ll='ls -al'
alias be='bundle exec'
alias br='bundle exec rspec'
alias pr='pipenv run'
alias pp='pipenv run python'
alias grep="grep --color=auto"
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TZ="Australia/Melbourne"
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig
export ARCHFLAGS="-arch x86_64"
export CC=/usr/bin/gcc
export MYSQL_HOME=/usr/local/Cellar/mysql
export PATH=$HOME/.jenv/bin:$HOME/.pyenv/bin:$HOME/bin:$MYSQL_HOME/bin:$PATH:/usr/local/sbin

compctl -g '~/.teamocil/*(:t:r)' teamocil

eval "$(rbenv init -)"
eval "$(jenv init -)"
eval "$(pyenv init -)"
export WORKON_HOME="~/.venvs"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_181`

