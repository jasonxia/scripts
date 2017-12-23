# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="powerline"
ZSH_THEME="robbyrussell"

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
plugins=(git ruby autojump osx mvn gradle zsh-nvm)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias ll='ls -al'
alias be='bundle exec'
alias br='bundle exec rspec'
alias pr='pipenv run'
alias pp='pipenv run python'
alias grep="grep --color=auto"
alias tomcat='cd ${CATALINA_HOME}'
alias start-tomcat='rm -rf $CATALINA_HOME/work && $CATALINA_HOME/bin/startup.sh'
alias stop-tomcat='$CATALINA_HOME/bin/shutdown.sh'
alias tomcat-log='tail -f ${CATALINA_HOME}/logs/catalina.out'
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias yar='/Users/xiay/.nvm/versions/node/v7.0.0/bin/yarn'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TZ="Australia/Melbourne"
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig
export JAVA_OPTS="-Xmx1024M -Djava.awt.headless=false -ea:com.localmatters... -ea:com.aptas... -Dfile.encoding=UTF-8 -Dorg.apache.tomcat.util.buf.UDecoder.ALLO.ALLOW_ENCODED_SLASH=true -Dorg.apache.catalina.connector.CoyoteAdapter.ALLOW_BACKSLASH=true"
export SPARK_DIST_CLASSPATH=$(hadoop classpath)
export TOMCAT_HOME=/usr/local/Cellar/tomcat/8.0.26/libexec
export CATALINA_HOME=/usr/local/Cellar/tomcat/8.0.26/libexec
export CATALINA_BASE=$CATALINA_HOME
export CATALINA_OPTS="-Dcom.sun.management.jmxremote.port=1099 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"
export MYSQL_HOME=/usr/local/Cellar/mysql
export ARCHFLAGS="-arch x86_64"
export CC=/usr/bin/gcc
export KAFKA_HOME=/usr/local/Cellar/kafka/0.10.1.0
export PATH=$HOME/.jenv/bin:$HOME/.pyenv/bin:$HOME/bin:$MYSQL_HOME/bin:$KAFKA_HOME/bin:$REBEL_HOME/bin:$PATH:/usr/local/sbin

eval "$(rbenv init -)"
eval "$(jenv init -)"
eval "$(pyenv init -)"
export WORKON_HOME="~/.venvs"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home

# AWS command completion
source /usr/local/bin/aws_zsh_completer.sh

compctl -g '~/.teamocil/*(:t:r)' teamocil

export NVM_DIR="/Users/xiay/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# tabtab source for jhipster package
# uninstall by removing these lines or running `tabtab uninstall jhipster`
[[ -f /Users/xiay/.config/yarn/global/node_modules/tabtab/.completions/jhipster.zsh ]] && . /Users/xiay/.config/yarn/global/node_modules/tabtab/.completions/jhipster.zsh

