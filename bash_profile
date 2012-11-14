alias ll='ls -al'
alias be='bundle exec'
alias mount_ad='sshfs yxia@ad-dev01.dev.int.realestate.com.au:/web/home/yxia ~/REA/AD1'
alias tomcat='cd ${CATALINA_HOME}'
alias start-tomcat='rm -rf $CATALINA_HOME/work && $CATALINA_HOME/bin/startup.sh'
alias stop-tomcat='$CATALINA_HOME/bin/shutdown.sh'
alias tomcat-log='tail -f ${CATALINA_HOME}/logs/catalina.out'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_09.jdk/Contents/Home
export JAVA_OPTS="-Xmx768M -XX:MaxPermSize=256m -Djava.awt.headless=false -ea:com.localmatters... -ea:com.aptas... -Dfile.encoding=UTF-8 -Dorg.apache.tomcat.util.buf.UDecoder.ALLO"
export JBOSS_HOME=/Applications/Tools/jboss-soa-p.4.3.0/jboss-as
export TOMCAT_HOME=/Applications/Tools/apache-tomcat
export CATALINA_HOME=/Applications/Tools/apache-tomcat
export CATALINA_OPTS="-Dcom.sun.management.jmxremote.port=1099 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"
export MAVEN_OPTS="-Xmx1024m -Xms512m"
export REBEL_HOME=/Applications/Tools/jrebel
export ACTIVEMQ_HOME=/Applications/Tools/apache-activemq-5.5.1
export HADOOP_HOME=/Applications/Tools/hadoop
export HADOOP_VERSION=1.0.3
export MYSQL_HOME=/usr/local/mysql
export ARCHFLAGS="-arch x86_64"
export CC=/usr/local/bin/gcc-4.2
export GEM_HOME=~/.gem
export GEM_PATH=$GEM_HOME
export PATH=$HOME/bin:$MYSQL_HOME/bin:$GEM_HOME/bin:$REBEL_HOME/bin:$PATH:/usr/local/sbin
export AWS_CREDENTIAL_FILE=$HOME/Documents/workspace/bigdata/credentials.json

bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward

function git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
    echo "("${ref#refs/heads/}") ";
}
PS1="G'Day!\u [\[\033[1;32m\]\w\[\033[0m] \[\033[0m\]\[\033[1;36m\]\$(git_branch)\[\033[0m\]$ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"

pushd ~/toolbox/mysql/aliases >  /dev/null
# use my ~/.my.cfg too!
./bash | sed 's/--defaults-file=/--defaults-extra-file=/' > /tmp/${USER}-aliases
source /tmp/${USER}-aliases
rm /tmp/${USER}-aliases
source ~/REA/bash/mysql/aliases/bash
popd > /dev/null

source /Users/yongmin_xia/REA/cp-auth/script/app-config.sh
