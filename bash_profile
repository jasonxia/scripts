alias ll='ls -al'
alias be='bundle exec'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export JAVA_OPTS="-Xmx768M -XX:MaxPermSize=256m -Djava.awt.headless=false -ea:com.localmatters... -ea:com.aptas... -Dfile.encoding=UTF-8 -Dorg.apache.tomcat.util.buf.UDecoder.ALLO"
export MAVEN_OPTS="-Xmx1024m -Xms512m"
export PATH=$HOME/bin:$MYSQL_HOME/bin:$REBEL_HOME/bin:$PATH:/usr/local/sbin

bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward

eval "$(rbenv init -)"

function git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
    echo "("${ref#refs/heads/}") ";
}
PS1="[\[\033[0m\]\[\033[1;34m\]\$(date +%k:%M:%S)\[\033[0m\]] [\[\033[1;32m\]\w\[\033[0m] \[\033[0m\]\[\033[1;36m\]\$(git_branch)\[\033[0m\]$ "

[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"

# AWS command completion
complete -C aws_completer aws

#export AWS_CREDENTIAL_FILE=~/Documents/AWS/credentials.json
#source ~/.aws/.rea/test/aws-env.sh

export ANSIBLE_MSSQL_REPO_PATH=~/Projects/Ops/ansible-mssql/
export DNS_PATH=~/Projects/Ops/dns/
export PUPPET_REPO_PATH=~/Projects/Ops/puppet/
export AWS_DEFAULT_REGION=us-east-1

