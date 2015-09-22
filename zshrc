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
plugins=(git ruby autojump osx mvn gradle)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias ll='ls -al'
alias be='bundle exec'
alias br='bundle exec rspec'
alias grep="grep --color=auto"
alias mount_ad='sshfs yxia@ad-dev01.dev.int.realestate.com.au:/web/home/yxia ~/REA/AD1'
alias tomcat='cd ${CATALINA_HOME}'
alias start-tomcat='rm -rf $CATALINA_HOME/work && $CATALINA_HOME/bin/startup.sh'
alias stop-tomcat='$CATALINA_HOME/bin/shutdown.sh'
alias tomcat-log='tail -f ${CATALINA_HOME}/logs/catalina.out'
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home
export JAVA_OPTS="-Xmx1024M -Djava.awt.headless=false -ea:com.localmatters... -ea:com.aptas... -Dfile.encoding=UTF-8 -Dorg.apache.tomcat.util.buf.UDecoder.ALLO.ALLOW_ENCODED_SLASH=true -Dorg.apache.catalina.connector.CoyoteAdapter.ALLOW_BACKSLASH=true"
export SBT_OPTS="-Xmx1024M -XX:MaxPermSize=512M"
export GRADLE_OPTS="-Xmx1024m -XX:MaxPermSize=512M -Xms512m"
export JBOSS_HOME=/Applications/Tools/jboss-soa-p.4.3.0/jboss-as
export TOMCAT_HOME=/usr/local/Cellar/tomcat/7.0.47/libexec
export CATALINA_HOME=/usr/local/Cellar/tomcat/7.0.47/libexec
export CATALINA_BASE=$CATALINA_HOME
export CATALINA_OPTS="-Dcom.sun.management.jmxremote.port=1099 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"
export REBEL_HOME=/Applications/Tools/jrebel
export ACTIVEMQ_HOME=/Applications/Tools/apache-activemq-5.5.1
export HADOOP_HOME=/Applications/Tools/hadoop
export HADOOP_VERSION=1.0.3
export MYSQL_HOME=/usr/local/mysql
export ARCHFLAGS="-arch x86_64"
export CC=/usr/bin/gcc
export PATH=$HOME/.jenv/bin:$HOME/bin:$MYSQL_HOME/bin:$REBEL_HOME/bin:$PATH:/usr/local/sbin
export AWS_RDS_HOME="/usr/local/Cellar/rds-command-line-tools/1.14.001/libexec"
export ANDROID_HOME="/Applications/Android Studio.app/Contents/sdk/"

eval "$(rbenv init -)"
eval "$(jenv init -)"

[[ -s "$(brew --prefix nvm)/nvm.sh" ]] && source "$(brew --prefix nvm)/nvm.sh"

# AWS command completion
source /usr/local/bin/aws_zsh_completer.sh

source ~/bin/idp_authenticate

export TZ="Australia/Melbourne"
export DOCKER_TLS_VERIFY=1
export DOCKER_CERT_PATH=/Users/yongmin_xia/.boot2docker/certs/boot2docker-vm
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig

export CP_DOMAIN_ENV=development
export MYCOMMERCIAL_API_HOST="http://localhost:3000"
export MYCOMMERCIAL_API_KEY="myrca-dev-api-key"
source ~/REA/Customer-Platform/cp-agentadmin/script/app-config.sh
