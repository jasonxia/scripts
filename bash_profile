alias ll='ls -al'
alias be='bundle exec'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

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

source ~/Projects/Ops/aws-idp/adfs_authenticate.sh

export ANSIBLE_MSSQL_REPO_PATH=~/Projects/Ops/ansible-mssql/
export DNS_PATH=~/Projects/Ops/dns/
export PUPPET_REPO_PATH=~/Projects/Ops/puppet/
export AWS_DEFAULT_REGION=us-east-1

